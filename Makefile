CC=g++
CXXFLAGS = -c -g -I.
DEPS=

clean:
	rm -f ./$(target) $(target).o

run: build
	./$(target)
	rm ./$(target)

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CXXFLAGS)

build: clean $(target).o 
	$(CC) -o $(target) $(target).o

debug: build
	gdb $(target)