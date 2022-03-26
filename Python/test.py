# def isHappyNumber(num):
#     sum = 0
#     rem = 0
#     while num>0:
#         rem = num%10
#         sqr = rem*rem
#         sum = sum +sqr
#         num = int(num/10)
#     return sum

# num = int(input('Enter a number'))
# result = num

# while(result!=1 and result!=4):
#     result = isHappyNumber(result)

# if(result==1):
#     print(str(num) + 'is a Happy Number')
# elif(result==4):
#     print(str(num) + 'is not a Happy Number')



# def stoneWeight(stone):
#     if len(stone)==0:
#         return 0
#     if len(stone)==1:
#         return 1
#     while len(stone)>1:
#         stone.sort()
#         s1 = stone[-1]
#         s2 = stone[-2]
#         if s1==s2:
#             stone.pop(-1)
#             stone.pop(-1)
#         else:
#             s1 = abs(s1-s2)
#             stone.pop(-1)
#             stone[-1] = s1
            
        
#     if len(stone):
#       return stone[-1]
#     return 0
# print(stoneWeight([1,2,3,4,5,6,3]))        
        
# def minimumOp(n):
#     if n==0:
#         return 0
#     elif n==1:
#         return 0
#     while n>1:
#         if n%2==0:
#             return 1 + minimumOp(n/2)
#         else:
#             return 1 + min(minimumOp(n-1),minimumOp(n+1))
# print(minimumOp(13))

weight = float(input('Enter your weight:'))
convert = input('kgs or lbs')
convert = convert.lower()
if convert =='lbs' :
    result = weight * 2
elif convert =='kgs' :
    result = weight * 0.5
else:result = 'wrong input'

print(result)        

        
    


        
        
    
    
      
    