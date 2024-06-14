CC ?= gcc

CFLAGS = -Wall -Wextra -Werror -Wno-sign-compare -std=c11 -O2

SRCS = rle.c

ifeq ($(OS),Windows_NT)
EXE := .exe
else
EXE :=
endif

.PHONY: all clean

all: rle$(EXE)
	@:

rle-debug$(EXE): $(SRCS)
	$(CC) $(CFLAGS) -fsanitize=address -g -DDEBUG $(SRCS) -o $@ $(LDFLAGS) $(LIBS)

rle$(EXE): $(SRCS)
	$(CC) $(CFLAGS) $(SRCS) -o $@ $(LDFLAGS) $(LIBS)

clean:
	$(RM) rle rle.exe
