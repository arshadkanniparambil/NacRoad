#include<stdio.h>
int main(){
    float mark;

    printf("Enter your mark: ");
    scanf("%f",&mark);


    if (mark>90)
    {
        printf("You have grade A");
    }
    else if (mark>80)
    {
        printf("You have grade B");
    }
    else if (mark>70)
    {
        printf("You have grade C");
    }
    else if (mark>60)
    {
        printf("You have grade D");
    }
    else if (mark>50)
    {
        printf("You have grade E");
    }
    else if (mark<50)
    {
        printf("karnan Napolean Bhaghat singh");
    }
    
    
}