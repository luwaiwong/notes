#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <fcntl.h>
#include <unistd.h>


int main(int argc, const char *argv[]) {
    // Expecting 2 arguments.  
    //    The first is a program to execute
    //    The second is the name of a file to redirect input from
    if (argc != 3) {
        fprintf(stderr, "incorrect number of arguments\n");
        return EXIT_FAILURE;
    }

    // open the file that is in argv[2]
    // Use "open" instead of "fopen" to get the file descriptor
    int fd = open(argv[2], O_RDONLY);
    if (fd < 0) {
        perror("open");
        return EXIT_FAILURE;
    }

    // Reset stdin so that it is coming from the open file
    //int ret = dup2(fd, STDIN_FILENO);
    int ret = dup2(fd, fileno(stdin));
    if (ret < 0) {
        perror("dup2");
        return EXIT_FAILURE;
    }

    // Use exec to run the program specified in argv[1]
    execlp(argv[1], argv[1], NULL);
    perror("exec");

    return 1;
}
