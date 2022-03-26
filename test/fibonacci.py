# def fibonacciNumber(n):

#     if n == 1:
#         return 0
#     a = 0
#     b = 1
    
#     for i in range(2,n):
#         c = a + b
#         b,a = c, b
#     return c
    
    
# print(fibonacciNumber(6))

# def fibonacciRecursion(n):
#     if n == 1:
#         return 0
#     if n == 2:
#         return 1


    
 
#     if n > 2:                
#         return (fibonacciRecursion(n-1)+ fibonacciRecursion(n-2))

# print(fibonacciRecursion(1))

# class Solution:
#     a = 0
#     b = 1
#     c = a + b
# def fibo(n):
#     if n==1:
#         return 0
#     if n==2:
#         return 1
#     if n > 2:
#         a = 0
#         b = 1
#         c = a + b
        
#     if n > 2:
#         return fibo((n-1)) 
    
# print(fibo(4))
        
        
# def fibo(n):
#     if n==1:
#         return 0
#     if n==2:
#         return 1
    
    
#     if n > 2:
#         a = 0
#         b = 1
#         c = a + b
#     return c + fibo((n-1)+fibo)
# print(fibo(6))
def fibRec(a,b,n):
    
    if n==1:
        print(a+b)
    else:
        return fibRec(b,a+b,n-1)
    
    

def fibo(n):
    if n ==1:
        return 0
    if n ==2:
        return 1
    if n > 2:
        fibRec(0,1,n-2)
        
print(fibo(5))
    