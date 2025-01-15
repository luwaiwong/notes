#include <stdio.h>

/* This is okay */
void print_array1(int arr[]) {
    printf("%lu\n", sizeof(arr));
    printf("arr[10] = %d\n", arr);
}

/* Karen doesn't like this one */
void print_array2(int arr[3]) {
    printf("%lu\n", sizeof(arr));
}

/* I prefer this one because this is actually what is passed in*/
void print_array3(int *arr) {
    printf("%lu\n", sizeof(arr));
}

int main() {

    // declares space for an array of size 4
    // statically initialize
    int a1[4] = {10, 20, 30, 40};
    int a3[4] = {0};

    // the size can be a variable

    int size = 3;
    int a2[size];
    // But once created the size is fixed
    printf("size of a2 is %lu\n", sizeof(a2));

    // index operator
    a1[3] = 22;

    //Name of array can be used as a pointer to its first element
    int *ptr = a1;

    ptr[0] +=1;
    a1[0]++;

    // But you can't re-assign an array variable
    // a1 = a2;  // doesn't work

    printf("&a1 = %p\n", &a1);  // this version is not used
    printf("a1 = %p\n", a1);
    printf("&a1[0] = %p\n", &a1[0]);


    // Call print_array
    print_array1(a2);
    print_array1(ptr);


    return 0;
}
