#include<stdio.h>
int sum(int,int);
int main(){
    int a,b,res;
    printf("Enter two numbers: ");
    scanf("%d%d",&a,&b);
    res=sum(a,b);
    printf("Result is %d",res);


}

int sum(int num1,int num2){
    int total;
    total=num1+num2;
    return total;
}