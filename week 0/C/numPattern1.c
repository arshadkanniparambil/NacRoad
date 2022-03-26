#include<stdio.h>
int main(){
    int i,j,limit,temp;
    printf("Enter the limit: ");
    scanf("%d",&limit);

    for ( i = 1; i <= limit; i++)
    {
        for ( j = 0; j < i; j++)
        {
            temp=j+1;
            printf("%d ",temp);
        }
        printf("\n");
    }
    return 0;
    
}