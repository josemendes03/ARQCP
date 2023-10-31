#include <stdio.h>
#include "functions.h"

int i = 2, j = 4, h = 0, r = 0, g = 0;

int c_f1(){
	if (i == j){
		h = i - j + 1;
	}else{
		h = i + j - 1;
	}
	return h;
}

int c_f2(){
	if(i > j){
		i = i - 1;
	}else {
		j = j + 1;
	}
	
	return h = j * i;
}

int c_f3(){
	if(i >= j){
		h = i * j;
		g = i + 1;
	}else{
		h = i + j;
		g = i + j + 2;
	}
	return r = g / h;
}

int c_f4(){
	if(i + j < 10){
		h = 4 * i * i;
	}else {
		h = j * j / 3;
	}
    return h;
}
