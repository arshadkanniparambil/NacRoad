#include<stdio.h>
int main(){

    int limit,i,sum=0,a[100];
    printf("Enter the limit:");
    scanf("%d",&limit);
    printf("Enter the %d values to add: ",limit);
    for ( i = 0; i < limit; i++)
    {
        scanf("%d\t",&a[i]);
        
    }
    for ( i = 0; i < limit; i++)
    {
        sum=sum+a[i];
    }
    printf("Sum of these values: %d",sum);
    
    return 0;

}