#include <stdio.h>
#include <stdlib.h>

int main()
{
    printf("Hello world!\n");
    pelda_1();
    return 0;
}

void pelda_1(){
    FILE *fp;
    char ch;
    char fnev[50];
    printf("File:");
    scanf("%s", fnev);
    fp=fopen(fnev, "w");
    printf("Üzenet");


}
