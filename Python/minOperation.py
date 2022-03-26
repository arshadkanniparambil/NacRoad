
def MinOperation(n):

    if n==0:
        return 0
    elif n==1:
        return 0
    while n>1:
        
        if n%2==0:
            return 1 + MinOperation(n/2)   
        else:
            return 1 + min(MinOperation(n+1),MinOperation(n-1))
         


print(MinOperation(15432))    
            
    
    
          
