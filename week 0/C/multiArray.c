#include<stdio.h>
int main(){
    int a[5][5],i,j,size;
    printf("Enter Array size: ");
    scanf("%d",&size);
    printf("Enter the values: ");
    for ( i = 0; i < size; i++)
    {
        for ( j = 0; j < size; j++)
        {
            scanf("%d",&a[i][j]);
            
        }
        printf("\n");
        
    }
    printf("Entered values are:\n");
    for ( i = 0; i < size; i++)
    {
        for ( j = 0; j < size; j++)
        {
            printf("%d\t",a[i][j]);
            
        }
        printf("\n");
        
    }
    return 0;
    
}