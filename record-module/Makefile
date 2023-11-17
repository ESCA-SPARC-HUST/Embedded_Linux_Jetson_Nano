CC=gcc
CFLAGS=-I.

server: main.c record.c
	$(CC) -o server server.c record.c -lasound -lpthread $(CFLAGS)
