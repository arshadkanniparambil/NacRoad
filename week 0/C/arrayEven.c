#include <stdio.h>
int main(void)
{
    int a[100], i, size, j, count=0;

    printf("Enter the size: ");
    scanf("%d", &size);
    printf("Enter  values: ");
    for ( i = 0; i < size; i++)
    {
        scanf("%d",&a[i]);
    }
    for ( i = 0; i < size; i++)
    {
        if (a[i]%2==0)
        {
            count=count+1;
        }
        
    }
    printf("No of Even NUmbers in Array: %d",count);
    
    
    
}