/******************************************************
	This is the main for Project 3, which asks you to 
    build a container that holds a list of college courses.
    The courses are always kept in order, so they never need
    to be sorted since they are always inserted in the order 
    where they go. You will also need the files:
	course.h
	course.cc
	node.h
    in order to do this project. You will be writing both the .h
    and the .cc file for the container.
	John Dolan			Spring 2015
**********************************************************/

#define CATCH_CONFIG_RUNNER
#include "catch.hpp"
#include <iostream>
#include <fstream>
#include <string>
#include "course.h"
#include "node.h"
#include "college.h"

using namespace std;

int main(){
    
    cout << "hi";
    
    int result = Catch::Session().run();
    
    return result;
}