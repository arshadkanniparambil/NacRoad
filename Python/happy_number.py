def isHappy(num):
    sum = 0
    rem = 0
    while num>0:
        rem = num%10
        sqr = rem*rem
        sum = sum+sqr
        num = int(num/10)
    return sum

num = int(input('Enter a number:'))
result = num

while(result!=1 and result!=4):
    result = isHappy(num)
    
if(result ==1):
    print('It is a happy number')
elif(result == 4):
    print('It is not a happy number')



    
        