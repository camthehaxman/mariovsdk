#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static char *get_file_extension(char *filename)
{
	char *index = strrchr(filename, '.');
	if (!index || index == filename)
	{
		return NULL;
	}
	return index + 1;
}

void usage(void)
{
	fputs("Usage: xm2gba bin_file [xm_file]\n"
		  "       xm2gba aif_file [xm_file]\n",
		  stderr);
}

long int file_size(FILE *f)
{
	long int pos = ftell(f);
	long int size;

	fseek(f, 0, SEEK_END);
	size = ftell(f);
	fseek(f, pos, SEEK_SET);
	return size;
}

int16_t read_s16(uint8_t *buf)
{
	return buf[0] | (buf[1] << 8);
}

uint32_t read_u32(uint8_t *buf)
{
	return buf[0] | (buf[1] << 8) | (buf[2] << 16) | (buf[3] << 24);
}

char *note_name(int note)
{
	static char buf[11];
	static const char names[][3] = { "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B" };

	if (note == 121)
		return "off";  // stop
	note--;
	sprintf(buf, "%s%i", names[note % 12], note / 12);
	return buf;
}

int gba2xm(char *input_file, char *output_file)
{
	FILE *in = fopen(input_file, "rb");
	unsigned char *buf;
	size_t size;
	int16_t instrumentIDs[128];
	int songLength;
	int maxPattern = 0;

	if (in == NULL)
	{
		fprintf(stderr, "Could not open %s\n", input_file);
		return 0;
	}
	size = file_size(in);
	buf = malloc(size);
	if (fread(buf, 1, size, in) != size)
	{
		fprintf(stderr, "Error reading %s\n", input_file);
		free(buf);
		return 0;
	}

	printf("title = %s\n", (char *)buf);

	for (int i = 0; i < 128; i++)
		instrumentIDs[i] = read_s16(buf + 0x144 + i * 2);

	fputs("instruments = [", stdout);
	for (int i = 0; instrumentIDs[i] != -1; i++)
		printf("%i ", instrumentIDs[i]);
	puts("]");

	songLength = read_s16(buf + 0x34);
	printf("song length = %i patterns\n", songLength);

	fputs("pattern table = [", stdout);
	for (int i = 0; i < songLength; i++)
	{
		int patId = buf[0x44 + i];
		if (patId > maxPattern)
			maxPattern = patId;
		printf("%i ", patId);
	}
	puts("]");

	#define MAXCHAN 8

	// Dump song info
	{
		for (int i = 0; i <= maxPattern; i++)
		{
			struct Channel
			{
				uint8_t prevInstr, currInstr;
				uint8_t prevNote,  currNote;
				uint8_t prevVol1,  currVol1;
				uint8_t prevVol2,  currVol2;
				uint8_t prevEff1,  currEff1;
				uint8_t prevEff2,  currEff2;
				uint8_t prevHdrByte;
				int changed;
			};
			struct Channel channels[16] = {0};
			uint8_t *patEntry = buf + 0x284 + i * 8;
			int length = read_u32(patEntry + 0);
			uint32_t offset = read_u32(patEntry + 4);
			uint8_t *ptr = buf + offset;

			printf("Pattern %i\n", i);
			printf("length = %i\n", length);
			printf("offset = 0x%X\n", offset);

			fputs("Time|", stdout);
			for (int j = 0; j < MAXCHAN; j++)
				fputs("Not In Vol  Eff |", stdout);
			puts("");
			for (int j = 0; j < 5 + MAXCHAN*17; j++)
				fputc('-', stdout);
			puts("");

			for (int tick = 0; tick < length; tick++)
			{
				uint8_t byte, hdrByte;

				for (int j = 0; j < 16; j++)
					channels[j].changed = 0;

				while ((byte = *ptr++) != 0)
				{
					int chanId = (byte & 0x3F) - 1;
					struct Channel *chan = &channels[chanId];
					//printf("%02X\n", byte);

					if (byte & 0x80)
						hdrByte = *ptr++;
					else
						hdrByte = chan->prevHdrByte;

					chan->currInstr = 0;
					chan->currNote = 0;

					if (hdrByte & 0x02)
						chan->currInstr = chan->prevInstr = *ptr++;
					else if (hdrByte & 0x20)
						chan->currInstr = chan->prevInstr;

					if (hdrByte & 0x04)
					{
						chan->currVol1 = chan->prevVol1 = *ptr++;
						chan->currVol2 = chan->prevVol2 = *ptr++;
					}
					else if (hdrByte & 0x40)
					{
						chan->currVol1 = chan->prevVol1;
						chan->currVol2 = chan->prevVol2;
					}

					if (hdrByte & 0x08)
					{
						chan->currEff1 = chan->prevEff1 = *ptr++;
						chan->currEff2 = chan->prevEff2 = *ptr++;
					}
					else if (hdrByte & 0x80)
					{
						chan->currEff1 = chan->prevEff1;
						chan->currEff2 = chan->prevEff2;
					}

					if (hdrByte & 0x01)  // note
						chan->currNote = chan->prevNote = *ptr++;
					else if (hdrByte & 0x10)
						chan->currNote = chan->prevNote;
					if (hdrByte & 0x11)
						chan->changed = 1;

					/*if (chan->currNote != chan->prevNote
					 || chan->currInstr != chan->prevInstr)
					{
						printf("%i %i\n", chan->currNote, chan->currInstr);
					}*/
					
					chan->prevHdrByte = hdrByte;
				}
				printf("%4i|", tick);
				for (int j = 0; j < MAXCHAN/*16*/; j++)
				{
					struct Channel *chan = &channels[j];
					if (chan->changed)
						printf("%-3s %2i %02X%02X %02X%02X|",
							note_name(chan->currNote),
							chan->currInstr,
							chan->currVol1, chan->currVol2,
							chan->currEff1, chan->currEff2
							);
					else
						fputs("                |", stdout);
					//if (chan->currEff1)
					//	abort();
				}
				puts("");
			}
		}
	}

	free(buf);

	(void)output_file;

	return 1;
}

int main(int argc, char **argv)
{
	char *input_file = NULL;
	char *output_file = NULL;
	char *extension;

	if (argc < 3)
	{
arg_error:
		usage();
		exit(1);
	}

	for (int i = 1; i < argc; i++)
	{
		if (input_file == NULL)
			input_file = argv[i];
		else if (output_file == NULL)
			output_file = argv[i];
		else
			goto arg_error;
	}

	extension = get_file_extension(input_file);
	if (strcmp(extension, "bin") == 0)
		gba2xm(input_file, output_file);
}
