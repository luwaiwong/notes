#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* This program provides a couple of examples of how to use qsort, with the purpose of demonstrating
 * practical uses of a function pointer. 
 * The function signature for qsort is:
 * void qsort(void *base, size_t nel, size_t width, int (*compar)(const void *, const void *));
 * Note the 4th argumen is a function pointer.  You should be able to explain what each component
 * of the argument means.
 *
 * The tricky part of writing a comparison function for qsort is knowing how to cast the type of
 * the void pointer arguments to a pointer to the elements being sorted.
 */

struct pixel {
    unsigned char blue;
    unsigned char green;
    unsigned char red;
};

/* For the purpose of this example, let's say pixel a is greater than 
 * pixel b if the sum of the 3 colour values is greater.
 */

int pixel_comparator(const void *a, const void *b) {
	// q sort expects a to point to an element of the array.  Since we have
	// an array of structs, we cast a and b to a pointer to the struct.
	// It is usually easier to define variables of the appropriate type
	struct pixel *pixel_a = (struct pixel *)a;
	struct pixel *pixel_b = (struct pixel *)b;
	int sum_a = pixel_a->blue + pixel_a->green + pixel_a->red;
	int sum_b = pixel_b->blue + pixel_b->green + pixel_b->red;

	// return a negative value if sum_a < sum_b, return 0 if they are
	// the same, return a positive value if sum_a > sum_b
	return sum_a - sum_b;
}


void print_pixel_row(struct pixel *p, int size) {
   for(int i = 0; i < size; i++) {
   	printf("(%d, %d, %d) ", p[i].blue, p[i].green, p[i].red);
   }
   printf("\n");
}

/* A comparison function for a an array of pointers to char. 
 * In this case the elements of the array are pointers, so qsort
 * will be calling this with a pointer to a pointer to char.
 * This is why the type casting looks more complicated.
 */

int string_comparator(const void *a, const void *b) {
	
	char *str_a = *((char **)a);
	char *str_b = *((char **)b);
	// strcmp already returns the right values for us
	return strcmp(str_a, str_b);
}
	


int main() {

    struct pixel row[] = {
    	{143, 103, 55}, {44, 40, 22}, {54, 49, 28}, {168, 123, 86}, {138, 98, 50}, {47, 43, 25}
    };
    printf("Original:\n");
    print_pixel_row(row, 6);

    // Once the comparison function is written, we only need to pass it
    // as an argument to qsort
    qsort(row, 6, sizeof(struct pixel), pixel_comparator);

    printf("Sorted:\n");
    print_pixel_row(row, 6);

    char *strs[] = {
    	"apple",
	"orange",
	"carrot",
	"banana",
	"melon"
    };

    printf("Original:\n");
    for(int i = 0; i < 5; i++) {
    	printf("%s\n", strs[i]);
    }
    printf("\n");

    qsort(strs, 5, sizeof(char *), string_comparator);

    printf("Sorted:\n");
    for(int i = 0; i < 5; i++) {
    	printf("%s\n", strs[i]);
    }
    printf("\n");


}
