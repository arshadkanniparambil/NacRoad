#include<stdio.h>
int main(){
    int a[100],i,limit,searchValue;
    int flag=0;
    printf("Enter the limit: ");
    scanf("%d",&limit);
    printf("Enter the %d values: ",limit);
    for ( i = 0; i < limit; i++)
    {
        scanf("%d",&a[i]);
        
    }
    printf("Enter the value to be searched: ");
    scanf("%d",&searchValue);
    for ( i = 0; i < limit; i++)
    {
        if (a[i]==searchValue)
        {
            printf("The value found at position %d",i+1);
            flag=1;
            break;
        }
        
        
        
    }
    if (flag==0)
    {
        printf("The value is not found");
    }
    
    

}