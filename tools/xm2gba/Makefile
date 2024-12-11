CC ?= gcc

CFLAGS = -Wall -Wextra -Wno-switch -Werror -std=c11 -O2
CFLAGS += -fsanitize=address

LIBS = -lm

SRCS = xm2gba.c

ifeq ($(OS),Windows_NT)
EXE := .exe
else
EXE :=
endif

.PHONY: all clean

all: xm2gba$(EXE)
	@:

xm2gba$(EXE): $(SRCS)
	$(CC) $(CFLAGS) $(SRCS) -o $@ $(LDFLAGS) $(LIBS)

clean:
	$(RM) xm2gba xm2gba.exe
