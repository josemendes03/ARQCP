#include <stdio.h>

int count_words(char *str){
	 int wordCount = 0;
     int inWord = 0;  //faz de flag para saber se há ou nao nova palavra
                     //funciona como boolean, 0 - false, 1 - true
	
 while (*str) {
        if (*str == ' ' || *str == '\n') {
            if (inWord) {
                inWord = 0;  // fim palavra
            }
        } else {
            if (!inWord) {
                inWord = 1;  // entrou nova palavra
                wordCount++; //incrementa o numero de palavras encontradas
            }
        }
        str++; //vai andando posiçoes até ao final da str
    }
    return wordCount;
}

