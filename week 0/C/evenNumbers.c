#include<stdio.h>
int main(){
    int limit,i;
    printf("Enter the limit: ");
    scanf("%d",&limit);
    for ( i = 2; i <= limit; i++)
    {
        if (i%2==0)
        {
            printf("%d\n",i);
        }
        
    }
    return 0;   
}