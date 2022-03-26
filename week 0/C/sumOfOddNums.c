#include<stdio.h>
int main(){
    int limit,sum=0,i;
    printf("Enter the limit: ");
    scanf("%d",&limit);
    for ( i = 1; i <= limit; i++)
    {
        if (i%2!=0)
        {
            sum=sum+i;
        }
        
    }
    printf("Sum of odd numbers: %d",sum);
    return 0;
    
}