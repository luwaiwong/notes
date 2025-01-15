#documentation/c #uoft/csc209 

In the [C Language](C%20Language), pointers are a *variable* which points to a memory location

---
## Properties
- Memory Size 8, or ``sizeof(int)``
- Points to memory location
- Can be used to store arrays
- You can define multiple levels of pointers, pointers that point to other pointers

## Syntax
Pointers can be defined in multiple ways
```
int *p; // Defining a pointer, which points to a memory location that stores an integer

int a[4] // Defining a pointer, which points to a memory location which is the start of an array of 4 integers

int **k; // Defining a pointer to a pointer

int i = 2;
p = &i; // & is used to refer to the memory location of a variable. This line changes what memory location p refers to
*p = i; // Sets the variable that p points to, to i, does not chance the memory location p refers to
a[0] = i; // How to access different values of a pointer array
```

