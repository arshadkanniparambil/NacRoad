#include<stdio.h>
int main(){
    int a[50][50],b[50][50],i,j,size,sum[50][50];

    printf("Enter the size of the array: ");
    scanf("%d",&size);

    printf("Enter the values of first Array:\n");
    for ( i = 0; i <size ; i++)
    {
        for ( j = 0; j < size; j++)
        {
            scanf("%d",&a[i][j]);
        }
        
        
    }

    printf("Enter the values of second Array:\n");
    for ( i = 0; i <size ; i++)
    {
        for ( j = 0; j < size; j++)
        {
            scanf("%d",&b[i][j]);
        }
    }
    
    
    for ( i = 0; i < size; i++)
    {
        for ( j = 0; j < size; j++)
        {
            sum[i][j]=a[i][j]+b[i][j];
        }
        
    }
    printf("Sum of the two Arrays:\n");
    for ( i = 0; i < size; i++)
    {
        for ( j = 0; j < size; j++)
        {
            printf("%d\t",sum[i][j]);
        }
        printf("\n");
        
    }
    
    return 0;

    
}