#include<stdio.h>
int main(){
    int p;
    float r,n,si;
    printf("Enter the Principal amount: ");
    scanf("%d",&p);
    printf("Enter the rate of interest: ");
    scanf("%f",&r);
    printf("Enter the number of years: ");
    scanf("%f",&n);
    si = ((p*r*n)/100);
    printf("Simple Interst: %f",si);
    return 0;
}