#include<stdio.h>


int size=3,a[50];
void getArray();
void displayArray();
int main(){
    getArray();
    displayArray();
}
void getArray(){
    int i;
    printf("Enter the values of the Array\n");
    for ( i = 0; i < size; i++)
    {
        scanf("%d",&a[i]);
    }
    

}
void displayArray(){
    int i;
    printf("You have an entered the Array:\n");
    for ( i = 0; i < size; i++)
    {
        printf("%d\t",a[i]);
    }
    

}