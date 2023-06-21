CC = g++
CFLAGS = -Wall -g

main: main.o
	$(CC) $(CFLAGS) -o main main.o -ltorch_cpu -lc10 -L/usr/lib/libtorch/lib

main.o:
	$(CC) $(CFLAGS) -c src/main.cpp -I/usr/lib/libtorch/include
