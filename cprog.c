#include <stdio.h> // => printf()


extern char* intobin(int a);

int main() {
	int num;

	printf("Enter a number :");


	scanf_s("%d", &num);

	printf("Binary representation of %d is ==>  %s",num, intobin(num));

	return 0;

}




