#include<stdio.h>
int main(){
    int row,i,j;
    printf("No of rows: ");
    scanf("%d",&row);

    for ( i = 1; i <= row; i++)
    {
        for ( j = row; j < 0; j--)
        {
            printf("* ");
        }
        printf("\n");
    }
    return 0;
}