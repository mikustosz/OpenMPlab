NAME = lapFusion
W = -Wall

all: gcc

gcc: $(NAME).c
	gcc $(W) -lm -fopenmp -Ofast $(NAME).c -o $(NAME)Gcc

icc: $(NAME).c
	icc $(W) -openmp -Ofast $(NAME).c -o $(NAME)Icc

.PHONY: clean
clean:
	rm $(NAME)Gcc $(NAME)Icc
