#include <stdio.h>
#include <stdlib.h>
#include <time.h>

char str[1000];
char ans[1000];
FILE *myfile;

extern void input(const char *inp);
extern void output(const char *outp);
extern void generate(int n);
extern void form_ans();

int main(int argc, char *argv[])
{
    if(argc != 3){
        printf("Wrong number of command line arguments. Termination of the program.\n");
        exit(1);
    }
    int choice = 0;
    printf("Input:\n1 — read from file\n2 — generate\n");
    scanf("%d", &choice);
    if(choice == 1){
        input(argv[1]);
    }
    if(choice == 2){
        int len;
        printf("Input the length of the string from 10 to 1000:\n");
        scanf("%d", &len);
        if(len < 10 || len > 1000){
            printf("Wrong length. Termination of the program.\n");
            exit(1);
        }
        generate(len);
    }
    time_t start = time(NULL);
    for(int i = 0; i < 3000000; i++){
        form_ans();
    }
    time_t end = time(NULL);
    printf("Seconds spent: %ld\n", end - start);
    output(argv[2]);
    return 0;
}
