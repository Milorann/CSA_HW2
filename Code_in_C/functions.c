#include <stdio.h>
#include <stdlib.h>
#include <time.h>

extern char str[];
extern char ans[];
extern FILE *myfile;

void input(const char *inp){
    myfile = fopen(inp, "r");
    if (myfile == NULL) {
        printf("Cannot open file.\n");
        exit(1);
    }
    fgets(str, 1000, myfile);
    fclose(myfile);
}

void output(const char *outp){
    myfile = fopen(outp, "w");
    fputs(ans, myfile);
    fputs("\n", myfile);
    fclose(myfile);
}

void generate(int n){
    srand(time(NULL));
    for(int i = 0; i < n; i++){
        str[i] = 32 + rand() % 95;
    }
    printf("Generated string:\n%s", str);
    printf("\n");
}

void form_ans(){
    int start = 0;
    int end = 0;
    int flag = 1;
    int ind_ans = 0;
    for(int i = 0; i < 1000; i++){
        if((str[i] < 65) || (str[i] > 90 && str[i] < 97) || (str[i] > 122)){
            end = i;
            if(start == end){
                start++;
                continue;
            }
            for(int j = start; j <= start + (end - start) / 2 - 1; j++){
                if(str[j] != str[start + end - j - 1]){
                    flag = 0;
                    break;
                }
            }
            if(flag == 1){
                for( ; start < end; start++, ind_ans++){
                    ans[ind_ans] = str[start];
                }
                ans[ind_ans] = ' ';
                ind_ans++;
            }
            flag = 1;
            start = end + 1;
        }
    }
}
