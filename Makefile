
FLAGS = -Wall -pthread -g

all: main-race main-deadlock main-deadlock-global main-signal main-signal-cv
clean:
	rm -f main-race main-deadlock main-deadlock-global main-signal main-signal-cv

main-race: main-race.c threads.h
	gcc -o main-race main-race.c $(FLAGS)

main-deadlock: main-deadlock.c threads.h
	gcc -o main-deadlock main-deadlock.c $(FLAGS)

main-deadlock-global: main-deadlock-global.c threads.h
	gcc -o main-deadlock-global main-deadlock-global.c $(FLAGS)

main-signal: main-signal.c threads.h
	gcc -o main-signal main-signal.c $(FLAGS)

main-signal-cv: main-signal-cv.c threads.h
	gcc -o main-signal-cv main-signal-cv.c $(FLAGS)

