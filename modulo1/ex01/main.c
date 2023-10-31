#include <stdio.h>

int main(){

int x = 5;
int* ptr_x = &x;
float y = *ptr_x + 3;

printf("The value of x is : %d\n",x); // 5
printf("The value of x is : %f\n",y); // 8.000000

printf("The adress (in Hexadecimal) of x is : %p\n",&x); // 0x7fffcf17b264
printf("The adress (in Hexadecimal) of y is : %p\n",&y); // 0x7fffcf17b254
printf("The adress (in Hexadecimal) of ptr_x is : %p\n",&ptr_x); // 0x7fffcf17b258

printf("The value of ptr_x is : %p\n",ptr_x); // 0x7fffcf17b264
printf("The value pointed of ptr_x is : %d\n",*ptr_x); // 5

int vec[] = {10, 20, 30, 40};
int* ptr_vec = vec;
int z = *ptr_vec;
int h = *(ptr_vec + 3);

printf("The value of z is : %d\n",z); // 10
printf("The value of h is : %d\n",h); // 40

printf("The adress (in Hexadecimal) of vec is : %p\n",&vec); // 0x7fffcf17b240
printf("The adress (in Hexadecimal) of ptr_vec is : %p\n",&ptr_vec); // 0x7fffcf17b238

printf("The value of vec is : %p\n",vec); // 0x7fffcf17b240
printf("The value of ptr_vec is : %p\n",ptr_vec); // 0x7fffcf17b240

printf("The value pointed of ptr_vec is : %d\n",*ptr_vec); // 10

//Since a pointer is a variable that stores the memory adress of another variable 
// as its value, the value of a pointer is an adress,so both printed have the same 
// result 0x7fffcf17b240 because the pointer points to the vec variable.
 
	int i;
	for(i = 0; i < 4; i++){
	printf("1: %p,%d\t", &vec[i],vec[i]);
	}
//	1: 0x7ffc179e57b0,10	1: 0x7ffc179e57b4,20	1: 0x7ffc179e57b8,30	1: 0x7ffc179e57bc,40	
		
	printf("\n");
	for(ptr_vec = vec; ptr_vec < vec + 4; ptr_vec++){
	printf("2: %p,%d\t", ptr_vec,*ptr_vec);
	}

//2: 0x7ffc179e57b0,10	2: 0x7ffc179e57b4,20	2: 0x7ffc179e57b8,30	2: 0x7ffc179e57bc,40	

	printf("\n");
	for(ptr_vec = vec + 3; ptr_vec >= vec; ptr_vec--){	
	printf("3: %p,%d\t", ptr_vec,*ptr_vec);
	}

// 3: 0x7ffc179e57bc,40	3: 0x7ffc179e57b8,30	3: 0x7ffc179e57b4,20	3: 0x7ffc179e57b0,10

//The ptr_vec++ uses the current value of ptr_vec and increments by 1,
//  moving the pointer to the nest memory location 
//  The ptr_vec-- uses the current value of ptr_vec and decrements by 1,
//  moving the pointer to the previous memory location 
  
        printf("\n");
	ptr_vec = vec;
	printf("4: %p,%d\n", ptr_vec,*ptr_vec);
       // 4: 0x7ffde509a130,10

	int a = *ptr_vec++;
	printf("5: %p,%d,%d\n", ptr_vec,*ptr_vec, a);
        //5: 0x7ffde509a134,20,10
        
	ptr_vec = vec;
	a = (*ptr_vec)++;
	printf("6: %p,%d,%d\n", ptr_vec,*ptr_vec, a);
       // 6: 0x7ffde509a130,11,10
       
	ptr_vec = vec;
	a = *++ptr_vec;
	printf("7: %p,%d,%d\n", ptr_vec,*ptr_vec, a);
        //7: 0x7ffde509a134,20,20

	ptr_vec = vec;
	a = ++*ptr_vec;
	printf("8: %p,%d,%d\n", ptr_vec,*ptr_vec, a);
        //8: 0x7ffde509a130,12,12
	printf("\n");

	for(ptr_vec = vec; ptr_vec < vec + 4; ptr_vec++){
	   printf("9: %p,%d\t", ptr_vec,*ptr_vec);
	}
 
        //9: 0x7ffde509a130,12	9: 0x7ffde509a134,20	9: 0x7ffde509a138,30	
        //9: 0x7ffde509a13c,40	        

	printf("\n");

	unsigned int d = 0xAABBCCDD;
	printf("10: %p,%x\t", &d,d);
	
	//10: 0x7ffe3e73d764,aabbccdd	
	
	printf("\n");
	unsigned char* ptr_d = (unsigned char*)&d;
	unsigned char* p;
	
	for(p = ptr_d; p < ptr_d + sizeof(unsigned int); p++){
		printf("11: %p,%x\t", p,(unsigned char)*p);
	}
	//11: 0x7ffe3e73d764,dd	11: 0x7ffe3e73d765,cc	11: 0x7ffe3e73d766,bb	
	//11: 0x7ffe3e73d767,aa	

	 return 0;

}

