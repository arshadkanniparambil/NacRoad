def palindromeNum(num):
    while num>0:
        temp = num
        rem = 0
        rev = 0
        rem = num%10
        rev = rev*10 + rem
        num = num/10
    if temp ==rev :
        return True
    return False
print(palindromeNum(121))

        