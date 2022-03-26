#include<stdio.h>
int main(){
    int size,a[100],i,j,temp;
    printf("Enter the size of array: ");
    scanf("%d",&size);
    printf("Enter the values: ");
    for ( i = 0; i < size; i++)
    {
        scanf("%d",&a[i]);
    }
    for ( i = 0; i < size-1; i++)
    {
        for ( j = i+1; j < size; j++)
        {
            if (a[i]<a[j])
            {
                temp=a[i];
                a[i]=a[j];
                a[j]=temp;
            }
            
        }
        
    }
    printf("Sorted Array: ");
    for ( i = 0; i < size; i++)
    {
        printf("%d\t",a[i]);
    }
    
    

    
}