# Hobbes 2015
# The George Washington University

export CC = gcc
export CFLAGS = -nostdlib -Wl,-r -o

SRCDIR = src

all : mkallobj APP

mkallobj :
	@cd $(SRCDIR) && $(MAKE) --no-print-directory

APP :
	$(eval OBJS = ./obj/*.o)
	$(eval SDL2 = $(shell /usr/bin/sdl2-config --cflags --libs))
	$(CC) -o RPG $(OBJS)
