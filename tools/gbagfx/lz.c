// Copyright (c) 2015 YamaArashi

#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include "global.h"
#include "lz.h"

unsigned char *LZDecompress(unsigned char *src, int srcSize, int *uncompressedSize)
{
	if (srcSize < 4)
		goto fail;

	int destSize = (src[3] << 16) | (src[2] << 8) | src[1];

	unsigned char *dest = malloc(destSize);

	if (dest == NULL)
		goto fail;

	memset(dest, 0xBA, destSize);

	int srcPos = 4;
	int destPos = 0;

	for (;;) {
		if (srcPos >= srcSize)
			goto fail;

		unsigned char flags = src[srcPos++];

		printf("flags: 0x%02X\n", flags);
		for (int i = 0; i < 8; i++) {
			if (flags & 0x80) {
				if (srcPos + 1 >= srcSize)
				{
					FATAL_ERROR("srcPos over");
					goto fail;
				}

				int blockSize = (src[srcPos] >> 4) + 3;
				int blockDistance = (((src[srcPos] & 0xF) << 8) | src[srcPos + 1]) + 1;

				srcPos += 2;

				int blockPos = destPos - blockDistance;

				// Some Ruby/Sapphire tilesets overflow.
				if (destPos + blockSize > destSize) {
					blockSize = destSize - destPos;
					fprintf(stderr, "Destination buffer overflow.\n");
				}

				if (blockPos < 0)
				{
					printf("distance = %i\n", blockDistance);
					printf("blockPos = %i\n", blockPos);
					FATAL_ERROR("negative blockPos");
					goto fail;
				}

				printf("copying %i bytes at 0x%X to 0x%X (distance %i): ", blockSize, blockPos, destPos, blockDistance);

				

				for (int j = 0; j < blockSize; j++)
				{
					printf("%02X ", dest[blockPos + j]);
					dest[destPos++] = dest[blockPos + j];
				}
				puts("");
				if (blockSize > blockDistance)
					printf("uh... what?\n");
			} else {
				if (srcPos >= srcSize || destPos >= destSize)
				{
					FATAL_ERROR("pos");
					goto fail;
				}
				printf("writing %02X at 0x%X\n", src[srcPos], destPos);
				dest[destPos++] = src[srcPos++];
			}

			if (destPos == destSize) {
				*uncompressedSize = destSize;
				return dest;
			}

			flags <<= 1;
		}
	}

fail:
	FATAL_ERROR("Fatal error while decompressing LZ file.\n");
}

//#define MIN_BLOCK_SIZE 3
#define MIN_BLOCK_SIZE 3

unsigned char *LZCompress(unsigned char *src, int srcSize, int *compressedSize, const int minDistance)
{
	int prevBlockPos = 0x21;
	
	if (srcSize <= 0)
		goto fail;

	int worstCaseDestSize = 4 + srcSize + ((srcSize + 7) / 8);

	// Round up to the next multiple of four.
	worstCaseDestSize = (worstCaseDestSize + 3) & ~3;

	unsigned char *dest = malloc(worstCaseDestSize);

	if (dest == NULL)
		goto fail;

	// header
	dest[0] = 0x10; // LZ compression type
	dest[1] = (unsigned char)srcSize;
	dest[2] = (unsigned char)(srcSize >> 8);
	dest[3] = (unsigned char)(srcSize >> 16);

	int srcPos = 0;
	int destPos = 4;

	for (;;) {
		unsigned char *flags = &dest[destPos++];
		*flags = 0;

		for (int i = 0; i < 8; i++) {
			int bestBlockDistance = 0;
			int bestBlockSize = 0;
			int blockDistance = minDistance;

#if 0
			while (blockDistance <= srcPos && blockDistance <= 0x1000) {
				int blockStart = srcPos - blockDistance;
				int blockSize = 0;

				// get matching length (blockSize)
				while (blockSize < 18
				    && srcPos + blockSize < srcSize
				    && src[blockStart + blockSize] == src[srcPos + blockSize])
					blockSize++;

				if (blockSize > bestBlockSize && srcPos >= 0x23 && blockStart >= 0x21) {
					bestBlockDistance = blockDistance;
					bestBlockSize = blockSize;

					if (blockSize == 18)
						break;
				}

				blockDistance++;
			}
#elif 0
			int blockStart = srcPos - 0x1000;
			if (blockStart < 0)
				blockStart = 0;
			while (blockStart < srcPos) {
				int blockSize = 0;
				while (blockSize < 18
				 && srcPos + blockSize < srcSize
				 && src[blockStart + blockSize] == src[srcPos + blockSize])
					blockSize++;
				
				blockDistance = srcPos - blockStart;
				if (blockSize > bestBlockSize && srcPos >= 0x23) {
					bestBlockDistance = blockDistance;
					bestBlockSize = blockSize;

					if (blockSize == 18)
						break;
				}
				
				blockStart++;
			}
#else
			// hacks
			/*
			if (srcPos == 0xAA)  prevBlockPos = 0xA2;
			if (srcPos == 0x14A) prevBlockPos = 0x8A;
			if (srcPos == 0x16C) prevBlockPos = 0x16A;
			if (srcPos == 0x1C0) prevBlockPos = 0x180;
			if (srcPos == 0x1D2) prevBlockPos = 0x1C6;
			if (srcPos == 0x1F1) prevBlockPos = 0x1EA;
			if (srcPos == 0x212) prevBlockPos = 0x20A;
			if (srcPos == 0x2D7) prevBlockPos = 0xED;
			if (srcPos == 0x2F3) prevBlockPos = 0x2EB;*/

			int blockMax = srcPos;
			int blockMin = srcPos - 0x1000;
			int blockStart = prevBlockPos;
			for (int i = 0; i < 0x1000; i++)
			{
				int blockSize = 0;
				
				if (blockStart >= 0)
				{
				
				while (blockSize < 18
				 && srcPos + blockSize < srcSize
				 && src[blockStart + blockSize] == src[srcPos + blockSize]
				 && blockStart + 1 < srcPos
				 //&& (blockStart + blockSize < srcPos || (blockStart + 1 < srcPos && src[blockStart + blockSize] == 0))
				 )
					blockSize++;
				
				blockDistance = srcPos - blockStart;
				if (blockSize > bestBlockSize && srcPos >= 0x23) {
					bestBlockDistance = blockDistance;
					bestBlockSize = blockSize;

					if (blockSize == 18)
						break;
				}
				
				}
				
				blockStart++;
				if (blockStart >= blockMax)
					blockStart = blockMin;
			}
			if (bestBlockSize >= MIN_BLOCK_SIZE) {
				prevBlockPos = blockStart;
			}
#endif
			if (bestBlockSize >= MIN_BLOCK_SIZE) {
				*flags |= (0x80 >> i);
				srcPos += bestBlockSize;
				bestBlockSize -= MIN_BLOCK_SIZE;
				bestBlockDistance--;
				dest[destPos++] = (bestBlockSize << 4) | ((unsigned int)bestBlockDistance >> 8);
				dest[destPos++] = (unsigned char)bestBlockDistance;
			} else {
				dest[destPos++] = src[srcPos++];
			}

			if (srcPos == srcSize) {
				// Pad to multiple of 4 bytes.
				int remainder = destPos % 4;

				if (remainder != 0) {
					for (int i = 0; i < 4 - remainder; i++)
						dest[destPos++] = 0;
				}

				*compressedSize = destPos;
				return dest;
			}
		}
	}

fail:
	FATAL_ERROR("Fatal error while compressing LZ file.\n");
}
