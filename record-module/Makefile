CC=gcc
CFLAGS=-I.

server: server.c record.c
	$(CC) -o server server.c record.c -lasound -lpthread $(CFLAGS)
