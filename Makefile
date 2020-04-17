#Me'Kayla Travis 
#makefile for hw in cs3560 
CXXFLAGS = -Wall -c 

all: build 

collegemain.o: collegemain.cc college.h node.h 
	g++ -Wall -c collegemain.cc 

college.o: college.cc college.h course.h node.h catch.hpp
	g++ -Wall -c college.cc 

course.o: course.cc course.h 
	g++ -Wall -c course.cc 
    
test_college.o: test_college.cc college.h node.h catch.hpp
	g++ -Wall -c test_college.cc 
    
main:  collegemain.o college.o course.o
	g++ -Wall -o main collegemain.o college.o course.o 

clean: 
	rm -f main test_college *.o 

build: collegemain.o college.o course.o 
	g++ -Wall -o main collegemain.o college.o course.o 

test: runtest

runtest: test_college
	./test_college 

test_college: test_college.o college.o course.o 
	$(CXX) -o $@ $^ 

