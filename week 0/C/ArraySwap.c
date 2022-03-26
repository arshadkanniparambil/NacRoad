#include <stdio.h>
int main(void)
{
    int a[100], b[100], i, size, j, temp[100];

    printf("Enter the size: ");
    scanf("%d", &size);
    printf("Enter  values of first Array: ");
    for (i = 0; i < size; i++)
    {
        scanf("%d", &a[i]);
    }
    printf("Enter  values of second Array: ");
    for (i = 0; i < size; i++)
    {
        scanf("%d", &b[i]);
    }

    for (i = 0; i < size; i++)
    {
        temp[i] = a[i];
        a[i] = b[i];
        b[i] = temp[i];
    }
    printf("First Array: ");
    for (i = 0; i < size; i++)
    {
        printf("%d\t", a[i]);
    }
    printf("\n Second Array: ");
    for (i = 0; i < size; i++)
    {
        printf("%d\t", b[i]);
    }
}