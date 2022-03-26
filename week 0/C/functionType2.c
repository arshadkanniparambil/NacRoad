#include<stdio.h>
void sum(int,int);
int main(){
    int a,b;
    printf("enter 2 numbers: ");
    scanf("%d%d",&a,&b);
    sum(a,b);
    return 0;

}

void sum(int num1,int num2){
    int total;
    total=num1+num2;
    printf("Result is %d",total);

}
