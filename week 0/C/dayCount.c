#include<stdio.h>
int main(){
    int choice;
    printf("Enter a number between 1-7 to get the correspondent day: ");
    scanf("%d",&choice);
    switch (choice)
    {
    case 1:
        printf("Sunday");
        break;
    case 2:
        printf("Monday");
        break;
    case 3:
        printf("Tuesday");
        break;
    case 4:
        printf("Wednesday");
        break;
    case 5:
        printf("Thursday");
        break;
    case 6:
        printf("Friday");
        break;
    case 7:
        printf("Saturday");
        break;
    
    default:
        printf("You hit it wrong,DICK HEAD!!");
        break;
    }
    return 0;
}