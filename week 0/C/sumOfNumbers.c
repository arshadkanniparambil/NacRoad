#include <stdio.h>
int main()
{
    int i, limit, sum=0;
    printf("Enter the limit: ");
    scanf("%d",&limit);
    for (i = 1; i < limit; i++)
    {
        sum = sum + i;
    }
    printf("Sum of digits upto the number %d is %d", limit, sum);
    return 0;
}