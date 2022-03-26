#include<stdio.h>
int main(){
    int i,num,flag=0;
    printf("Enter the number: ");
    scanf("%d",&num);
    for ( i = 2; i < num/2; i++)
    {
        if (num%i==0)
        {
            flag=1;
            break;
        }
        
    }
    if (flag==0)
    {
        printf("It is a Prime number");
    }
    else
    {
        printf("It is what it is...oh and not a prime number");
    }
    
    return 0;
    

}