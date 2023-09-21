ALL = main

<<<<<<< HEAD
all: $(ALL)

main: hello.o myfunction.o myfunction2.o
	gcc -o $@ $^ -lm

%.o: %.c
	gcc -c $<
=======
hello: hello.o myfunction.o myfunction2.o
	gcc -o hello hello.o myfunction.o myfunction2.o -lm

myfunction.o: myfunction.c
	gcc -c myfunction.c

myfunction2.o: myfunction2.c
	gcc -c myfunction2.c
>>>>>>> ef65938 (Agora está compilando ok, mas ainda não está correto.)

clean:
	rm -f *.s *.o output erro

distclean: clean
	rm -f $(ALL)

