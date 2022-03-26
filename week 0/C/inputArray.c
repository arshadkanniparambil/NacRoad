#include<stdio.h>
int main(){
    int a[100],i,j,limit;
    printf("Enter array limit: ");
    scanf("%d",&limit);

    printf("Enter %d numbers: ",limit);
    for ( i = 0; i < limit; i++)
    {
        scanf("%d",&a[i]);
    }
    printf("The Entered values are: ");
    for ( i = 0; i < limit; i++)
    {
        printf("%d\t",a[i]);
    }

    return 0;


    
}