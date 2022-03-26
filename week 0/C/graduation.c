#include<stdio.h>
int main(){
    int mark;
    printf("Enter the mark of the student: ");
    scanf("%d",&mark);
    if (mark>=50)
    {
        printf("Congratulations, you have passed");
    }
    else
    {
        printf("You can only blame yourself for being dumb");
    }
    
    
}