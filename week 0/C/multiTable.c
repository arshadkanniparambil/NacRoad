#include<stdio.h>
int main(){
    int num,i,total;
    printf("Enter the number: ");
    scanf("%d",&num);
    for ( i = 1; i <= 10; i++)
    {
        total=i*num;
        printf("%d * %d = %d \n",i,num,total);
        
    }
    
    
}