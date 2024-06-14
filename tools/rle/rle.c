#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

bool rle_compress(FILE *input, FILE *output)
{
    uint8_t *inbuf;
    uint8_t *outbuf = NULL;
    size_t insize;
    size_t outsize = 0;
    uint8_t *in;

    fseek(input, 0, SEEK_END);
    insize = ftell(input);
    fseek(input, 0, SEEK_SET);
    if ((inbuf = malloc(insize)) == NULL)
    {
        fputs("Memory allocation failure\n", stderr);
        return false;
    }
    if (fread(inbuf, insize, 1, input) != 1)
    {
        fputs("Read error\n", stderr);
        return false;
    }
    in = inbuf;
    outbuf = malloc(4);
    outbuf[0] = (3 << 4);
    outbuf[1] = insize & 0xFF;
    outbuf[2] = (insize >> 8) & 0xFF;
    outbuf[3] = (insize >> 16) & 0xFF;
    outsize = 4;

    int fillByte = -1;
    int fillLength = 0;
    int copyLength = 0;
    while (in < inbuf + insize)
    {
        //printf("input offset 0x%lX:\t%02X (%s)\tfillLength: %i\tcopyLength: %i\n", in - inbuf, *in, *in == fillByte ? "same" : "new", fillLength, copyLength);

        uint8_t byte = *in++;
        if (byte == fillByte)  // same byte
        {
            fillLength++;
        }
        else  // new byte
        {
            if (fillLength >= 3)  // write fill run
            {
                // If this fill sequence follows a copy sequence, we don't include this fill's byte in the copy sequence
                copyLength--;
                
                // write copy (if any) before this fill
                if (copyLength > 0)
                {
                    uint8_t *copySrc = in - fillLength - copyLength - 1;
                    /*printf("%i byte copy from 0x%lX: ", copyLength, copySrc - inbuf);
                    for (int i = 0; i < copyLength; i++)
                        printf("%02X ", copySrc[i]);
                    puts("");*/
                    outbuf = realloc(outbuf, outsize + 1 + copyLength);
                    outbuf[outsize++] = copyLength - 1;
                    memcpy(outbuf + outsize, copySrc, copyLength);
                    outsize += copyLength;
                }
                
                //printf("end of %i byte fill of 0x%X\n", fillLength, fillByte);
                while (fillLength >= 130)
                {
                    outbuf = realloc(outbuf, outsize + 2);
                    outbuf[outsize++] = 0x80 | 127;
                    outbuf[outsize++] = fillByte;
                    //printf(" wrote %i byte fill of 0x%X\n", 130, fillByte);
                    fillLength -= 130;
                }
                outbuf = realloc(outbuf, outsize + 2);
                outbuf[outsize++] = 0x80 | (fillLength - 3);
                outbuf[outsize++] = fillByte;
                //printf(" wrote %i byte fill of 0x%X\n", fillLength, fillByte);
                
                copyLength = 0;
            }
            if (fillByte != -1 && byte != fillByte)
                copyLength++;
            
            fillByte = byte;
            fillLength = 1;
        }
        
    }
    //printf("end of file (offset 0x%lX)\n", in - inbuf);
    // handle fills at end
    if (fillLength >= 3)
    {
        copyLength--;  // ignore the byte that starts the fill
        // write previous copy
        if (copyLength > 0)
        {
            uint8_t *copySrc = in - fillLength - copyLength;
            /*printf("%i byte copy from 0x%lX: ", copyLength, copySrc - inbuf);
            for (int i = 0; i < copyLength; i++)
                printf("%02X ", copySrc[i]);
            puts("");*/
            outbuf = realloc(outbuf, outsize + 1 + copyLength);
            outbuf[outsize++] = copyLength - 1;
            memcpy(outbuf + outsize, copySrc, copyLength);
            outsize += copyLength;
        }
        
        //printf("%i byte fill of 0x%X\n", fillLength, fillByte);
        while (fillLength >= 130)
        {
            outbuf = realloc(outbuf, outsize + 2);
            outbuf[outsize++] = 0x80 | 127;
            outbuf[outsize++] = fillByte;
            //printf(" wrote %i byte fill of 0x%X\n", 130, fillByte);
            fillLength -= 130;
        }
        outbuf = realloc(outbuf, outsize + 2);
        outbuf[outsize++] = 0x80 | (fillLength - 3);
        outbuf[outsize++] = fillByte;
        //printf(" wrote %i byte fill of 0x%X\n", fillLength, fillByte);
    }

    if (fwrite(outbuf, outsize, 1, output) != 1)
    {
        fputs("Write error\n", stderr);
        return false;
    }

    free(inbuf);
    free(outbuf);

    return true;
}

static bool rle_decompress(FILE *input, FILE *output)
{
    uint8_t *inbuf;
    uint8_t *src;
    uint8_t *outbuf;
    uint16_t *dest;
    size_t outsize;
    uint32_t pos = 0;
    uint8_t count;
    uint8_t srcByte;
    uint16_t destWord = 0;

    size_t insize;

    fseek(input, 0, SEEK_END);
    insize = ftell(input);
    fseek(input, 0, SEEK_SET);
    if ((inbuf = malloc(insize)) == NULL)
    {
        fputs("Memory allocation failure\n", stderr);
        return false;
    }
    if (fread(inbuf, insize, 1, input) != 1)
    {
        fputs("Read error\n", stderr);
        return false;
    }
    if ((inbuf[0] >> 4) != 3)
    {
        fputs("Invalid RLE header\n", stderr);
        return false;
    }
    outsize = inbuf[1] | (inbuf[2] << 8) | (inbuf[3] << 16);  // uncompressed size
    src = inbuf + 4;  // skip over header
    //printf("compressed size: 0x%lX, uncompressed size: 0x%lX\n", insize, outsize);
    if ((outbuf = malloc(outsize)) == NULL)
    {
        fputs("Memory allocation failure\n", stderr);
        return false;
    }
    dest = (uint16_t *)outbuf;

    while (pos < outsize)
    {
        if (src >= inbuf + insize)
            goto input_over;
        count = *src++;
        if (count & 0x80)
        {
            count &= ~0x80;
            count += 3;
            if (src >= inbuf + insize)
                goto input_over;
            srcByte = *src++;
            while (count != 0)
            {
                if (pos & 1)
                {
                    destWord |= srcByte << 8;
                    *dest++ = destWord;
                    destWord = 0;
                }
                else
                {
                    destWord = srcByte;
                }
                count--;
                pos++;
            }
        }
        else
        {
            count++;
            while (count != 0)
            {
                if (pos & 1)
                {
                    if (src >= inbuf + insize)
                        goto input_over;
                    destWord |= *src++ << 8;
                    *dest++ = destWord;
                    destWord = 0;
                }
                else
                {
                    if (src >= inbuf + insize)
                        goto input_over;
                    destWord = *src++;
                }
                count--;
                pos++;
            }
        }
    }
    if (pos & 1)
        *dest = destWord;

    if (fwrite(outbuf, outsize, 1, output) != 1)
    {
        fputs("Write error\n", stderr);
        return false;
    }

    free(inbuf);
    free(outbuf);
    return true;

input_over:
    fputs("Not enough input data\n", stderr);
    return false;
}

int main(int argc, char **argv)
{
    char *inputName = NULL;
    char *outputName = NULL;
    bool decompress = false;
    FILE *input, *output;
    int ret = 1;

    for (int i = 1; i < argc; i++)
    {
        char *arg = argv[i];

        if (arg[0] == '-')
        {
            if (strcmp(arg, "-d") == 0)
                decompress = true;
            else
            {
                fprintf(stderr, "Unrecognized option: %s\n", arg);
                goto usage;
            }
        }
        else if (inputName == NULL)
            inputName = arg;
        else if (outputName == NULL)
            outputName = arg;
        else
        {
            fputs("Too many files specified\n", stderr);
            goto usage;
        }
    }
    if (inputName == NULL || outputName == NULL)
        goto usage;

    if ((input = fopen(inputName, "rb")) == NULL)
    {
        fprintf(stderr, "Failed to open '%s' for reading\n", inputName);
        return 1;
    }
    if ((output = fopen(outputName, "wb")) == NULL)
    {
        fprintf(stderr, "Failed to open '%s' for writing\n", outputName);
        return 1;
    }

    if (decompress)
        ret = rle_decompress(input, output) ? 0 : 1;
    else
        ret = rle_compress(input, output) ? 0 : 1;

    fclose(input);
    fclose(output);

    return ret;

usage:
    fprintf(stderr, "Usage: %s [-d] INPUT_FILE OUTPUT_FILE\n", argv[0]);
    return 1;
}
