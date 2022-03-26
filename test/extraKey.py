def extraKey(s,t):
    
    # for i in range(len(t)):
    #     if t[i] not in s:
    #         return t[i]
    if len(s) < len(t):
        s1 = list(s.strip(''))
        t1 = list(t.strip(''))
        for i in s1:
            t1.remove(i)
        return t1
        
        
         
        
        
        
print(extraKey('ddd','dddd'))

