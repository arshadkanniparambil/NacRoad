#include<stdio.h>
int sum();
int main(){
    int res;
    res=sum();
    printf("Result is %d",res);


}

int sum(){
    int num1,num2,total;
    printf("Enter two numbers: ");
    scanf("%d%d",&num1,&num2);
    total=num1+num2;
    return total;

}