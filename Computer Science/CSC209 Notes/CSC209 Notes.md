#uoft/csc209 #notes 

Notes for [CSC209](CSC209)

Links
	[Syllabus](https://q.utoronto.ca/courses/353468/pages/course-syllabus)
	[PCRS](https://pcrs.teach.cs.toronto.edu/csc209-2024-09/)
	[Quercus](https://q.utoronto.ca/courses/353468)
	[Markus](https://markus.teach.cs.toronto.edu/)

 
 
 [Course Schedule](https://q.utoronto.ca/courses/353468)

---
# Table of Contents

Textbooks
	[CSC209 C Programming, A Modern Approach King](attachments/CSC209%20C%20Programming,%20A%20Modern%20Approach%20King.pdf)
	[CSC209 The Linux Programming Interface, Michael Kerrisk](attachments/CSC209%20The%20Linux%20Programming%20Interface,%20Michael%20Kerrisk.pdf)
[#Week 1](#Week%201)
	[#Course Overview](#Course%20Overview)
	[#Files, Permissions, and Ethics](#Files,%20Permissions,%20and%20Ethics)
[#Week 2](#Week%202)
	[#Pointers](#Pointers)
	[#Arrays](#Arrays)
	[#Syntax](#Syntax)
[#Week 3](#Week%203)
	[#Memory](#Memory)
[#Week 4](#Week%204)
	[#Strings](#Strings)
	[#Structs](#Structs)
[#Week 5](#Week%205)
	[#Compilation](#Compilation)
	[#Compiling with multiple files](#Compiling%20with%20multiple%20files)
	[#Make](#Make)
[#Week 6](#Week%206)
	[#C Preprocessor](#C%20Preprocessor)
	[#Typedef](#Typedef)
	[#Function Pointers](#Function%20Pointers)
	[#System Calls vs. Library Calls](#System%20Calls%20vs.%20Library%20Calls)
[#Week 7](#Week%207)
	[#Forks](#Forks)
	[#Running Executables](#Running%20Executables)
[#Week 8](#Week%208)
	[#Pipes](#Pipes)
		[#File Descriptors](#File%20Descriptors)
	[#Dup2](#Dup2)
[#Week 9](#Week%209)
[#Week 10](#Week%2010)
	[#Bit Manipulation](#Bit%20Manipulation)
	[#Multiplexing](#Multiplexing)
		[#Why use select?](#Why%20use%20select?)
	[#Sockets](#Sockets)
[#Week 11](#Week%2011)
[# Week 12](#%20Week%2012)

# Notes
## Week 1
> Readings: Kerrisk 2.1-2.6
> Lectures:
> 	[CSC209 Lecture 1](attachments/CSC209%20Lecture%201.pdf)
> 	[CSC209 Lecture 2](attachments/CSC209%20Lecture%202.pdf)

### Course Overview
The goal of this course is to "open the trunk" of a computer and learn how programs work

Things to think about
- What does it mean to "run a program"?
- What is a program?
- What is a running program?
- What is a file

Unix Principles
- Do one thing well
- Simple input formats
- Simple output formats
	- Be able to input into another tool 

An [Operating System](Operating%20System) commonly refers to two different concepts
- The entire package consisting of the central software managing a computer's resources and all of the accompanying standard software tools, like terminal emulators, guis, file editors. etc. Or alternatively,
- Just the central software that manages and allocates computer resources (i.e., CPU, RAM, and devices)
The second definition is often referred to also as the [Kernel](../../Mathematics/MAT224%20Notes/Kernel.md), and is the definition of [Operating System](Operating%20System) the [Kerrisk Textbook](attachments/CSC209%20The%20Linux%20Programming%20Interface,%20Michael%20Kerrisk.pdf) and these notes refer to.

[Kernels](../../Mathematics/MAT224%20Notes/Kernel.md) perform the following tasks:
- Process scheduling
- Memory management
- Provision of file system
- Creation and termination of processes
- Access to devices
- Networking
- Provision of system call API

A [Shell](Shell) is a program to read commands typed by a user and execute programs 
Some common shells are
- Bourne Shell (sh)
- Bourne again shell (bash)
### Files, Permissions, and Ethics
In Linux, anyone using the system is divided into **users**, and **users** are divided into **groups**
Every file and directory has a **user owner**, and a **group**
	This controls who can read, write, and execute files, and files in directories

> How to set/read permissions
> 	An example of how permissions to various files and directories would be listed
> 		![Pasted image 20240906170728](attachments/Pasted%20image%2020240906170728.png)
> 	How to read those permissions
> 		![500](attachments/Pasted%20image%2020240906170718.png)
> 		So a directory where the user has full permissions, group has read and execute permission, and everyone else has no permissions, than it would read: "-rwxr-x---"

[Linux Commands](Linux%20Commands) 
```
ls // Lists files and directories in current location
cd // "changd directory"
mkdir // "make directory"
cp // "copy" 
mv // "move", also used to rename files
wc // "word count", returns word count of file
cat // prints content of file
diff // compare two files
grep // find text in file
man // gives more info about command
| // "Pipe", redirects output from a program, to input of another program
	program | anotherprogram
< // directs output of program to text file, or text file to input
	program > textfile
	program < textfile
chmod // "Change Mode"
	chmod a+rwx // Gives all users rwx permissions
		// First item dictates who is getting permission
		// Then + 
		// And then the permissions to be given, x for execute, rw for read and write
```

## Week 2
> Textbook: 
> 	King, Ch. 1-7
> Worksheets:
> 	[CSC209 array_and_pointer_basics_solution](CSC209%20array_and_pointer_basics_solution.pdf)
> 	[CSC209 calls_and_pointers_solution](CSC209%20calls_and_pointers_solution.pdf)
> 	[arrs](arrs.c)

### Pointers
[C Pointers](C%20Pointers.md) are variables with memory size 8, which store a memory location to another variable
- Arrays are actually pointers
- You can pass them into functions, where in the function you can change the original variable outside the function

We use * to *dereference* a pointer, and get the *value of the memory location it points to*

We use & to mean the *location of* a variable
	If you use & on a pointer, you get the memory location, of the stored memory location that the pointer points to
### Arrays
Arrays in the [C Language](C%20Language) are really just pointers, which point to the start of the array

>When you define an array, you are defining a pointer, where afterwards C allocates space the size of the array after that pointer

### Syntax
```
int *p; // Defining a pointer, which points to a memory location that stores an integer

int a[4] // Defining an array, which is a pointer to a memory location which is the start of an array of 4 integers

int i = 2;
p = &i; // & is used to refer to the memory location of a variable. This line changes what memory location p refers to
*p = i; // Sets the variable that p points to, to i, does not chance the memory location p refers to
a[0] = i; // How to access different values of a pointer array
```


## Week 3 
> Textbook:
> 	King, Ch. 8, 11, 12, 17
> Practice Problems 
>	[CSC209 malloc_basics_solution](CSC209%20malloc_basics_solution.pdf)
>	[stack_vs_heap_solution](stack_vs_heap_solution.pdf)

### Memory 
Whenever a variable is created in [C](C%20Memory), memory is allocated for that variable

Memory diagrams show the state of memory for a program
- Each address represents 4 bytes of data
> Example of a Memory Diagram
> 	![Pasted image 20241105155512](Pasted%20image%2020241105155512.png)
> 	Memory Diagrams help us visualize how memory is being allocated and deallocated in a program

There are two ways memory is allocated in C
- A [Stack](Stack) frame for a function, is memory allocated for variables in a function, which is deallocated after the function ends
- The [Heap](Heap), is where memory allocated using *malloc* is allocated, and is not deallocated unless explicitly done so using *free*

> Remember:
> 	Bit is a 0 or 1
> 	Byte is 8 bits
> 	Memory address is 

Size of different variable types
- Integer: 8 or 4 Bytes (64 vs 32bit)
- Pointer: 8 or 4 Bytes (64 vs 32bit)
- Character: 1 Byte per character

> Example of the memory diagram of a program
> 	![Pasted image 20241106120522](Pasted%20image%2020241106120522.png)

## Week 4
> Textbook:
> 	 King, Ch. 13, 17
> Practice Problems:
> 	[strings_sol](strings_sol.pdf)
> 	[structs_mem](structs_mem.pdf)

### Strings
"Strings" don't exist as they typically do in [C](C%20Language), instead, all strings are *lists of characters*, where the end is defined by the *null terminator* `\0`

```
// Creating strings
char *method1 = "string";
char method2[] = "string";
char method3[7] = "string";
char method4[7]={'s','t','r','i','n','g','\0'} // manually defining string
char *method5 = malloc(7);
strncpy(method5, "string", 7);

// CANNOT DO THIS
method2 = "string"
```

> When you define a string with "" it automatically adds the null terminator `\0` as the last character
> However, if you manually define a string, you need to add the null terminator manually


### Structs
A [C Struct](C%20Struct) is a way of creating custom datatypes

Struct Example
```
struct contact {  
    char name[30];  
    int phone_number;  
    char address[30];  
};  
  
int main(void) {  
    struct contact friend;  

    friend.phone_number = 377177377;  
}
```

Structs are stored in the stack, unless allocated with malloc

## Week 5
>Term Test 1 this week
>Textbook:
>	King: 14.1-2, 15, 16
>	Kerrisk: 6.1-6.6
>Slides:
>	[CSC209 Streams](CSC209%20Streams.pdf)
>Worksheets:
>	[CSC209 io_conversions_sol](CSC209%20io_conversions_sol.pdf)
>Topics:
>	Low Level I/O

Streams can either be reading from a file, or reading standard input

Reading Input
```
fscanf(STREAM, format) // Formatted Read
fgets(output, size, STREAM) // Read line
fread(output, size, nmemb, STREAM) // Read bytes
```

Writing Output
```
fprintf(STREAM, format) // Formatted Write
fputs(string, STREAM) // Write line of text
fwrite(pointer, size, nmemb, STREAM) // Write binary data
```

Other operations
```
fseek(STREAM, offset, OPTIONS)
// Moves cursor to offset relative to options
// SEEK_SET, Beginning of file
// SEEK_CUR, Current position of cursor
// SEEK_END, End of file
fclose(STREAM) // Self explanetory
```
 
### Compilation
When compiling C code, it goes through 3 steps
- It starts as the source code (.c)
- Gets *compiled* into assembly (.s)
- Is turned into an object file which is optimized assembly? (.o)
	- A .o file is an object file that contains compiled code with placeholders for links to object code in other files or libraries. 
- And then gets assembled into an executable (.out)

> Note:
> 	a.out is the default name for an executable in c

```
gcc -S test.c // compiles c code into assembly, creates test.s
gcc test.s // creates executable out of assembly, creats a.out
gcc test.c // creates executable a.out
gcc test1.c test2.c // compiling, with multiple dependencies

// Optionally
as test.s -o test.o 
	// creates object file out of assembly code
	// This step is normally hidden by gcc test.s
```

When compiling programs with multiple files, the C compiler compiles them separately, into `.o` object files, and then together into the final executable

We can go through that process manually:
```
gcc -c test1.c // compiles into test1.o
gcc -c test2.c // compiles into test2.o
gcc test1.o test2.o // compiles into one a.out
```

### Compiling with multiple files
If you want to reference functions from other files, in C can simply place a *function prototype*, or an empty function of the same name, at the top of your code. 
Then, when you compile your code, as long as you compile the code, with another file which includes that function, the compiler will automagically link those functions together

```
// Example
// File 1
void dothing1(){
	// does something
}

// File 2
void dothing1();
int main(){
	dothing1();
}

// When you compile file 1 with file 2, with:
gcc file1.c file2.c
// File 2 will call the function from file 1
```

[C Header Files](C%20Header%20Files) are a way to maintain type safety and make this process easier
Instead of having to manually reference all the functions from a particular file, we define a *Header File* (.h)
	The header file includes all the functions that file1 must provide, and that file2 can use

```
Example of Header Files
// File 1
void dothing1(){
	// does something
}

// File 1 Header
void dothing1();

// File 2
#include "file1.h"
int main(){
	dothing1();
}
```

### Make
Make is a system for automating compilation in C



``` MAKE
// Example of makefile
// Variables
//	$<: first name in list of dependencies
//  $@: target name

FLAGS = -Wall -Werror -std=c99  
DEPENDENCIES = sorts.h  

OBJFILES = compare_sorts.o sorts.o
  
all: compare_sorts  
  
compare_sorts: $(OBJFILES)$
      gcc $(FLAGS) -o $(OBJFILES)
  
%.o: %.c $(DEPENDENCIES)  
      gcc $(FLAGS) -c $<  

.PHONY clean
clean:   
      rm -f *.o print_ptree
```

## Week 6
>Textbook:
>	King: 14.1-2, 15, 16
>	Kerrisk: 6.1-6.6
>Topics:
>	L6.2: Header Files, Function Pointers, System Calls
>	L6.2: Make
>Worksheets:
>	[CSC209 qsort_example](CSC209%20qsort_example.c)
>	[CSC209 makefiles_sol](CSC209%20makefiles_sol.pdf)
>	[CSC209 func_ptrs_errors_sol](CSC209%20func_ptrs_errors_sol.pdf)

### C Preprocessor
Macros are variables in C code which can be set on compilation, and changes what code is compiled

```c
// Using macros for if/else statements
#ifdef MACRO
printf("MACRO");
#endif

// Using macros as variables
#define MACRO = 32;
char name[MACRO]

// Function like macros
#define MACRO(x) x+5
printf("%d", MACRO(10))

// Compiling macros with different variable values
gcc -DMACRO=5 question1.c
```

In the preprocessor when compiling C code, the compiler recognizes macros, and replaces every instance of the macro, to its value
	So `char name[MACRO]` in the example above is replaced with `char name[32]` when compiling

Notes
- Macros are generally formatted in all caps
- Macros are defined without semicolons

### Typedef
Typedef is a way to create an *alias* for an existing type

The purpose of typedef is to make code cleaner and more readable. 
	Typedef cannot be used to create different data structures, but rather different types which function the same as traditional C types, but with a different name

``` c
typedef int meters;

void function(meters size){
	printf("Example of typedef");
}
```

###  Function Pointers
You can pass pointers of functions

``` c
// Syntax of function pointers
// Must be in the format
returntype (*func_name)(inputs);

// So an example could be
void function(int i, char* c){
	// Do something
}
void (*function_pointer)(int, char*) = function;

// An exampl eof a function, which returns a function pointer
void (*parse_command_line(int argc, char *argv[]))(int *, int);

// This example function takes in a integer and pointer to a string, and returns a function which takes an int pointer and character
```

### System Calls vs. Library Calls
A system call is a call directly to the operating system
On the other hand, a library call is a function call from another C library

System calls write error to `errno`, where we should use `perror`
Library calls do NOT

## Week 7
> Textbook:
> 	Kerrisk:24.1, 24.2, 24.4, 25.1, 25.2, 26 
> 	King: 17.7
> Topics
> 	L7.1: Header Files, Make (from last week)
> 	L7.2 Introduction to Processes
> Worksheets
> 	[CSC209 fork](CSC209%20fork.pdf)
> 		[CSC209 fork_fruits](CSC209%20fork_fruits.c) 
> 	[CSC209 wait (2)](CSC209%20wait%20(2).pdf)
> 		[CSC209 wait_sol](CSC209%20wait_sol.c)

### Forks
You can create a new process of your program (or thread) using `fork`

Whenever fork is called on a function, the following happens
- A new process is created which begins executing at the point fork returns
- The return value at the original process is the process ID of the child
- The return value at the child process is 0
- If the fork fails, it returns -1
- Either fork may execute first, depending on the OS

``` c
result = fork()
// Fork returns the process ID of its child, 0 if its the child, or -1 if it fails

getpid();  // Gets process id 
getppid(); // Gets parent process id

pid_t pid;
int status
pid = wait(&status); 
// Wait can be used in the parent process to wait for execution of children before passing
// If result is -1, then there was an error
// Status is set to the status returned by the child process

#include <sys/wait.h>
WIFEXITED(status);   // True if child process exited normally
WEXITSTATUS(status); // Extracts exit value of process
WIFSIGNALED(status); // True if child exited because of signal
WTERMSIG(status);    // Returns value of signal which caused return

// How to wait for specific child proccess, pass in childs pid
waitpid(pid_t pid, int *status, int options); 
// WNOHANG option can be used to check if child process has terminated, without waiting
```

A *Zombie Process* is a child process, which has completed, but is waiting for its parent to call wait on it, or to end itself
An *Orphan Process* is a child process whose parent has terminated first
	An orphan processes parent is set to the init process (first process the OS runs)

### Running Executables
You can replace your current running process with another executable with `execl`

``` c
// Executes hello on current process
execl("./hello", NULL); 
// We should not get to this point, because the process should be replaced by execl
perror("exec")
```

## Week 8
> Textbook:
> 	Kerrisk: 44.1, 44.2, 44.4
> Topics:
> 	L8.1: Processes and Pipes
> Worksheets:
> 	[CSC209 pipe](CSC209%20pipe.pdf)
> 	[CSC209 pipes_sol](CSC209%20pipes_sol.c)
> 	[CSC209 Pipe_drawing](CSC209%20Pipe_drawing.pdf)
> 	[CSC290 redir-sol](CSC290%20redir-sol.c)

### Pipes
We learned how to created different processes above with `fork`, now we learn how we can use pipes to communicate between processes
	We do this by using *file descriptors*, because child process inherit its parents file descriptors

``` c
int fd[2]; // Create a variable to hold file descriptors
// Creates the pipe channel, then sets the two variables 
// in fd to the read and write file descriptors for the pipe
pipe(fd); 

int r = fork(); // Create new process

if (r > 0){ 
	// In the parent process
	// Say the parent is only reading data from the pipe
	close(fd[1]); // We close the write file descriptor in the parent

	// Reading input
	int input;
	while (read(fd[0], &input, sizeof(int)) > 0){
		// Waiting for data
		// read will return 0, when the parent process closes the write  
		// descriptor of the pipe, or when read errors and returns -1
	}

	close(fd[0]) // Close read file descriptor
} else if (r == 0){
	// In the child process
	// Say the child is only reading data from the pipe
	close(fd[0]); // We close the read file descriptor in the child

	// Reading input
	int output = 10;
	if (write(fd[1], &output, sizeof(int)) != sizeof(int)){
		// Error could not read pipe
	}

	close(fd[1]); // Close write file descriptor
}
```

Notes
- Index 0 is always reading from the pipe
- Index 1 is always writing to the pipe
- Pipes must be opened *before* new processes are created, or the file descriptors will not be inherited
- When a program exists, all of its file descriptors are closed, and memory is freed
- The number of open file descriptors is limited, and it is possible to run out
- Pipes are a queue data structure
- The operating system ensures that a pipe can only be written to, or read from, *not* both at once, at any given time
- Read calls are blocked if a pipe is empty, and are unblocked when they are written to
- Write calls are blocked if a pipe is full, and are unblocked when space is made available
#### File Descriptors
When you run your program, every *open file* or *open communication channel*, is assigned a **file descriptor**. 
	The file descriptor table is an indexed table of output and input channels, starting at 0, which you can also use to directly tell C where to write and read.
Typically, 3 file descriptors are automatically created when you run your program
- stdin: index 0
- stdout: index 1
- stderr: index 2

Every process and program has its own file descriptor table, for its input and outputs

If you wanted to write or read directly to these channels, without using `fwrite` or `fread`, you could do them using system calls like so:
``` c
// Writing to stdout using its file descriptor and the write system call
int output = 10;

// Writing
if (write(1, &output, sizeof(int)) != sizeof(int)){
	// Error Checking
}

// Notice how the first argument passed is 1, because 1 is typically the index for stdout, and we are writing to stdout

// Similarly, reading from stdin using its file descriptor and the read system call
int input;
if (read(0, &input, sizeof(int)) != sizeof(int)){
	// Error Checking
}

// These calls use the index, and the file descriptor table of the process to determine where to read or write
```

When you call `pipe`, the operating system  creates a communication channel, and opens *two* file descriptors, one which reads to the pipe, and one which writes to the pipe

> Pipe Diagram
> 	![340](Pipe%20Diagram.png)

### Dup2
`dup2` can be used to redirect file descriptors into different channels

``` c
dup2(1, 2);
// This redirects file descriptor 1, to file descriptor 2
// Now when we try to read or write from 1, we really read or write from 2
```

> Note
> 	What `dup2` is really doing is, taking two indices in the file descriptor table and resetting one to refer to the same file object as the other

## Week 9
> Textbook:
> 	Kerrisk: 2.11, 20 ,21
> Topics:
> 	L9.1: Signals
> 	L9.2: Term Test 2 
> Worksheets
> 	[CSC209 Week 9 signals](attachments/CSC209%20Week%209%20signals.pdf)
> 	[CSC209 Week 9 greeting-start](attachments/CSC209%20Week%209%20greeting-start.c)

### Signals
Signals are a mechanism that allow a process or operating system, to inturrupt a currently running program, and notify it when an event is occurred
Each signal is denoted by a number from 1-31

> Small list of signals
> 	![CSC209 Notes Signals](attachments/CSC209%20Notes%20Signals.png)

Signals in terminal
- ^C (Control C): Sends SIGINT, terminates program
- ^Z (Control Z): Sends SIGSTOP, stops program

``` sh
# Sending signals in the terminal
# You can send signals with kill
# To stop a process with process id 100, can run
kill -STOP 100

# To resume that stopped process
kill -CONT 100

# To terminate process
kill -INT 100
```

We can change the behaviour of the program when a signal is called in c,  by using the `sigaction` system call
```c
// Setting custom signal handler
// Creating signal handler
void handler(int code){
	fprintf(stderr, "Signal %d caught\n", code)
}

// Setting signal handler
struct sigaction newact;
newact.sa_handler = handler;
newact.sa_flags = 0; // Default flags
sigemptyset(&newact.sa_mask); // Block no signals during handler
sigaction(SIGINT, &newact, NULL);

// SIGKILL and SIGSTOP are two signals that you cannot intercept
```

Notes
- SIGKILL and SIGSTOP can never be modified
- A signal handling function must always have the same signature as any signal handling function

## Week 10
> Textbook
> 	Kerrisk:
> 		select: 63.2.1
> 		socket: 56.1-5, 58.6.3
> Topics:
> 	L10.1: Sockets
> 	L10.2: Select
> Slides:
> 	[CSC209 Week 10 Intro Networking](attachments/CSC209%20Week%2010%20Intro%20Networking.pdf)
> 	[CSC209 Week 10 Select](attachments/CSC209%20Week%2010%20Select.pdf)
> Worksheets:
> 	[CSC209 sockets](attachments/CSC209%20sockets.pdf)
> 	[CSC209 select](attachments/CSC209%20select.pdf)
> 	[CSC209 lego_game](attachments/CSC209%20lego_game.c)
### Bit Manipulation
> Recall that in C, true and false values are stored as 1 for true, and 0 for false
> Also note that bits are counted right to left, starting at 0

#### Bit Operators
The `&` operator, is the *bitwise comparison* operator, and checks whether each bit of both variables is identical

``` c
1 && 8 // Returns 1
1 & 8 // Returns 0
8 & 8 // Returns 1

// && Returns true on integers, if both integers are > 0
// However, the bit values of 1 and 8 are 0001, and 1000
// Since the bit values are not the same, & returns false
```

The `|` operator, *bitwise or* operator returns 1 if one or both values is equal to 1. 
The `^` *exclusive bitwise or* operator returns 1 *if only one* value is equal to 1
	Also called *conditional negation*

``` c
// Bitwise Or Operators
1 | 1 // Returns 1
1 | 0 // Returns 1
0 | 1 // Returns 1
0 | 0 // Returns 0

1 ^ 1 // Returns 0
1 ^ 0 // Returns 1
0 ^ 1 // Returns 1
0 ^ 0 // Returns 0
```

The `~` *complement operator* takes a single value, and flips every bit in the variable

``` c
// Complement Operator
~0 == 1
~8 == 7

// This is because 8 is 1000 in binary, and 7 is 0111 in binary
```

All the bitwise operators work on entire sets of bits
``` c
// Bitwise Operations
2 | 8 == 10

// 2 == 0010, 8 == 1000, so 2 | 8 == 1010 == 10

// For a variable b, setting the third bit to 1, and 
// leaving other bits unchanged
// 0x8 is 1000, so the or operator sets the third bit to 1 and
// leaves every other bit
char b = 0xC1 // 1100 0001
b | 0x8 // 1100 1001

// Write an expression that results in 0 if the second bit of b is 0 
// and a non-zero value if the second bit is 1
char b = 0xC1 // 1100 0001
b & 0x4 // 0100
```

The `<<` and `>>` *shift left* and *shift right* operator takes a number value, and shifts the bit value by that number

``` c
// Shift Operator
1 // 0001
1 << 1 // 0010
1 << 3 // 1000

8 // 1000
8 >> 1 // 0100
8 >> 3 // 0001

// Another way of thinking about the shift operator is multiplication
8 << 1 // 0001 0000, 16
8 << 2 // 0010 0000, 32
8 >> 1 // 0000 0100, 4
8 >> 2 // 0000 0010, 2

// Shifting is helpful for checking specific bits, without using
// a constant number, like we did above with 0x8 to get a specific bit
// set the kth bit in var
var = var | (1 << k);

// Check the kth bit in var
return var & (1 << k);
```
#### Flag Bits
Flag bits are used by some c system calls, where a single argument can be used to pass multiple options, where each bit, or "flag" of the argument is used as the value for a specific option

For example, read write permissions for a file/folder

``` c
// Bit Flags Example
// Read write permissions for a file/folder is represented as

// File Permissions: rwxr-xr-x
// Where the first three elements are permissions of the admin
// Middle three ar permissions of the group, 
// And last three are permissions of all users
// This value can be recorded as big flags instead
// The above can be represented as
// 1 1110 1101

// A file with only read permissions can be represented as
// 1 0010 0100

// Some constants that exist for helping set file permissions
S_IRUSR // Set read for owner
S_IRGRP // Set read for group
S_IROTH // Set read for everyone else

// Setting mode with bitwise operators
mode_t mode = S_IRUSR | S_IRGRP | S_IROTH;

// Checking mode with bitwise operators
return mode & (S_IRGRP | S_IROTH) // Check if group and other have read permissions
```

### Multiplexing
The function `select` can be used to check multiple pipes/file descriptors, and return the file descriptors which have a result/are ready
	`select` helps to reduce wasted time and blocking, when trying to read from multiple file descriptors, where one is often idle

``` c
// Using select
// Select takes in value of the largest file descriptor + 1, and a list of file descriptors
// It then modifies the list of file descriptors, and only leaves the ones which are ready

// Creating list of file descriptors
// Use provided macros to create list
fd_set read_fds;
FD_ZERO(&read_fds);
FD_SET(pipe1, &read_fds);
FD_SET(pipe2, &read_fds);

// Find largest fild descriptor
int numfd;
if (pipe1 > pipe2){
	numfd = pipe1+1;
} else {
	numfd = pipe2+1;
}

// Select call
if (select(numfd, &read_fds, NULL, NULL, NULL) != 1){
	// select error
}

// Checking which pipe is ready
if (FD_ISSET(pipe1, &read_fds)){
	r = read(pipe1);
}

if (FD_ISSET(pipe2, &read_fds)){
	r = read(pipe2);
}
```

> `read_fds`:
> 	`read_fds` is overwritten by select after it is used, and cannot be used again
> 	If you want to run select on a set of file descriptors, you need to recreate `read_fds` each time
> Other Input values:
> 	The third argument is used to block for write calls
> 	The fourth argument is used to block for error checking calls
> 	The last argument is a timeout value
#### Why use select?
Using blocking read calls can result in issues sometimes when we want to read from multiple sources

Lets say we have code like such:
```c
read(child1);
read(child2);
```
A problem arises when child1 takes a long time to write to its pipe, but child2 has data ready to be written, because read is blocked until child1 is ready

### Sockets
> Recall:
> 	Each devices have an IP address
> 	Each program on a device has a *port*, for that machine
> 	Messages for a program, are divided up and sent in *packets*

There are many types of sockets, or ways to set up connections to recieve data. This course focuses of Stream Sockets (TCP)
TCP Sockets are
- Connection-oriented sockets
- No loss guaranteed
- Messages will be delivered in the order they are sent

Notes
- Web pages are typically served on port 80
- If you want to support datagrams, pass in `SOCK_DGRAM` as arg
- host-to-network-short (htons) converts byte order of host machine to network byte order
	- Translates data, to format that host machine, and client machine can both understand
- 127.0.0.1 is localhost, used for local programs

``` c
// Socket server setup code
// Function calls
int socket (int domain, int type, int protocol); // Setting up Socket

int bind(int socket, const struct sockaddr *address, socklen_t address_len); // Setting up bind

int listen(int socket, int backlog); // Listen

int accept(int sockfd, struct sockaddr *address, socklen_t *addrlen)

// Setting up socket
int listen_soc = socket(AF_INET, SOCK_STREAM, 0);
if (listen_soc == -1){
	perror("socket");
}

// Set up address of socket
struct sockaddr_in addr;
addr.sin_family = AF_INET;
addr.sin_port = htons(54321) // htons convert byte order
addr_sin_addr.s_addr = INADDR_ANY // Tell port to connect to anyone
memset(&(addr.sin_zero), 0, 8); // wipe old data so it doesn't get leaked or something?

// Start up socket
if (bind(listen_soc, (struct sockaddr *) &addr, sizeof(struct sockaddr_in)) == -1){
	perror("bind");
	close(listen_sock)
}

// Set up and wait for connections
if (listen(listen_soc, 5) < 0){
	perror("bind")
}

// Set up socket address for client
struct sockaddr_in client_addr;
client_addr.sin_family = AF_INET;
unsigned int client_len = sizeof(struct sockaddr_in);

// Accept any connection
// Note accept is blocking system call, will wait for connection
// Also note accept returns -1 on fail
int return_value = accept(listen_soc, (struct sockaddr *) &client_addr, &client_len);

// Use read and write system calls to send and recieve data
// Write
write(client_socket, "hello\r\n", 7)

// Read
char line[10];
read(client_socket, line, 10);
line[9] = '\0';
printf("I read %s\n", line)

// Close socket
close(listen_soc)
```

An example of writing client socket code
``` c
// Client socket stup code
int soc = socket(AF_INET, SOCK_STREAM, 0);

// Set up socket 
struct sockaddr_in server;
server.sin_family = AF_INET;
memset(&server.sin_zero, 0 ,8);
server.sin_port = htons(54321)

// Get address info
struct addrinfo *result;
int getaddrinfo("teach.cs.utoronto.edu", NULL, NULL, &result);
server.sin_addr = ((struct sockaddr_in *) result -> ai_addr)->sin_addr;
freeaddrinfo(result)

// Connect
int connect(soc, (struct sockaddr *) &server, socklen_t addrlen)

// Use read and write system calls to send and recieve data
// Read
char buf[10];
read(soc, buf, 7);
buf[7] = '\0';
printf("I read %s\n", buf)

// Write
write(soc, "0123456789", 10);

// Close socket
close(soc)
```
## Week 11
> Textbook:
> 	Kerrisk: 56.1-5, 58.6.3
> Topics:
> 	L11.1: Introduction to Shell Programming
> 	L11.2: Ethics Module 2: Hacking
> Worksheets
> 	[CSC209 shell_worksheet](attachments/CSC209%20shell_worksheet.pdf)
> 	[CSC209 login](attachments/CSC209%20login.c)

### Shell Scripting
Shell scripts automate shell commands
``` sh
# Recall common commands
echo # Repeats input in terminal
cat # Read contents of file
grep # Search 

# Variables
i=3 # Setting Variables (Must have no space)
i=$i+1
echo $i # Using Variables
echo ${i} # Another way of using variables

# Doing Math
expr 4 + 1 # Addition
expr 4 \* 2 # Multiplication

# Commands
# Backquotes `` run a command and returns the result anywhere you want
i=`expr 4 + 1`
i=`expr $i + 1`
i=`expr $a \* $b`

# If statements
# We can't check values like i>0 easily so we use test
test $i -lt 3 # Less than
test $i -gt 3 # Greater than
test $i -a 3 # and

if test $i -lt 3 # Testing i less than 3
then
	echo i greater than 10
else 
	echo i not greater than 10
fi

# We can if statements on regular programs too
if grep value file
then
	echo found value in file
else 
	echo did not find value in file
fi

# redirecting input
# To discard output, redirect to /dev/null
command > location # redirects standard output
command 2> location # redirects standard error
command &> location # redirects both standard output and error

# Quotes
# Any program will still run with quotes
ls
'ls'
"ls"
# These al behave the same, because ls is a string that gets interpreted as a program
# We can use quote to suppress meaning of character
echo hello '>' yes
# Suppresses the redirect

# When passing in variables with multiple words, need to use quotes
filename=hello world

# The following will not work, would be interpreted as two inputs
cat hello world 
cat $filename
# The following will work
cat 'hello world'
cat "hello world"
cat "$filename"

# Seq
seq 1 1 4 # Ouputs numbers 1-4 with one number in between
seq 2 2 100 # Ouputs all even numbers from 2-100
seq 1 4 # Still outputs numbers 1-4

# For loops
for i in hello goodbye 
do
	echo $i, world
done
# returns hello, world; goodbye world

for i in 'seq 1 4'
do
	echo $i
done
# returns numbers from 1-4

# Case statements
i=hello
case $i in 
	hello*)
		echo Hi! Nice to see you!
		;;
	goodbye)
		echo Thanks for visiting!
		;;
	*)
		echo well, $i to you too!
		;;
esac

# Hello* means that if you do hello, or hellooooo, the first one will still trigger

# Command line args 
# We can get command line arguments with $0 $1 $2 $3... etc.
echo $0
echo $# # Returns the number of arguments supplied

# Shifter shifts all arges to the left
# $1 takes the value of $2, etc
# $0 always holds the name of the script, and remains unchanged
echo $1
shift
echo $1 # $2 will be returned
```

#### Suppression
Double quotes suppress everything except for
- dollar sign
- backquote
- backslash
- the closing double quote

Single quotes suppress everything except for the single closing quote
## Week 12
> Topics:
> 	L12.1: Shell Programming
> 	L12.2: Course Wrap Up
> Slides:
> 	[CSC209 Week12-review-karen-2024.key](attachments/CSC209%20Week12-review-karen-2024.key.pdf)
> Worksheets
> 	[shell_worksheet2](attachments/shell_worksheet2.pdf)
> 	[run_time_reads](attachments/run_time_reads.sh)
> 	[run_floop](attachments/run_floop.sh)
> 	[run_fibonacci](attachments/run_fibonacci.sh)