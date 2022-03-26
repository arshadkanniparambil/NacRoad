def isPalindrome(s):
    rev = s[::-1]
    if s == rev :
        return True
    else:
        return False


def palindrome(s):
    if isPalindrome(s):
        return True
    
    s1 = list(s.strip(''))
    for i in s:
        s1.remove(i)
        if isPalindrome(''.join(s1)):
            return True
        else:
            s1 = list(s.strip(''))
    return False
            
        
         
print(palindrome('abdad'))
             