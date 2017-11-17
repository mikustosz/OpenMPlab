NAME = lapFusion
W = -Wall

all: gcc

gcc: $(NAME).c
	gcc $(W) -lm -fopenmp -Ofast $(NAME).c -o $(NAME)Gcc$(NR)

icc: $(NAME).c
	icc $(W) -openmp -Ofast $(NAME).c -o $(NAME)Icc$(NR)

report: $(PROG)
	perf stat -e cycles,instructions,task-clock ./$(PROG) $(A1) $(A2) > $(PROG).out 2>&1 && cat $(PROG).out



.PHONY: clean
clean:
	rm -f $(NAME)Gcc* $(NAME)Icc* *.out
