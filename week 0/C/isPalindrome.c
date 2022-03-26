#include<stdio.h>
#include<string.h>

int main(){
    int i,length,flag=0;
    char string1[20];

    printf("Enter a string: ");
    scanf("%s",string1);
    length=strlen(string1);

    for ( i = 0; i < length; i++)
    {
        if (string1[i]!=string1[length-i-1])
        {
            flag=1;
            break;
        }
        
    }
    if (flag==0)
    {
        printf("The given string is palindrome");

    }
    else
    {
        printf("The given string is not palindrome");
    }
    
    
    

}