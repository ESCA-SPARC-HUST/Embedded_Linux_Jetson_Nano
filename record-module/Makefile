CC=gcc
CFLAGS=-I.

all: server.c record.c client.c
	$(CC) -o server server.c record.c -lasound -lpthread $(CFLAGS)
	$(CC) -o client client.c -lpthread $(CFLAGS)
	