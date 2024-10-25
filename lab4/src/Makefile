CC=lfortran

.PHONY: all

all: generate run clean

generate: main.f90
	$(CC) main.f90 -o main

run: main
	./main

clean:
	rm main.tmp.o main
