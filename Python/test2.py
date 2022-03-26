def alikeWords (s:str):
    n = len(s)
    n1 = n//2
    s1 = s.split(maxsplit=n1)
    s2 = s.split(maxsplit=n1 + n%2)
    return s1 ,s2

print(alikeWords('starts'))