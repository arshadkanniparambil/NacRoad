# def longestCommonPrefix(strs:list([str])):
#     result = ''
    
#     for i in range(len(strs[0])):
#         for s in strs:
#             if i ==len(s) or s[i] !=strs[0][i]:
#                 return result
#         result += strs[0][i]
#     return result

# print(longestCommonPrefix(['asta','asma','asla']))

def LCP(strs:list([str])):
    lcp = ''
    if len(strs)==0:
        return lcp
    
    minlen = len(strs[0])
    for i in range(len(strs)):
        minlen = min(len(strs[i]), minlen)
    i = 0
    while i < minlen:
        char = strs[0][i]
        for j in range(1,len(strs)):
            if strs[j][i] != char:
                return lcp
        lcp = lcp + char
        i += 1
    return lcp
            
print(LCP(['asta','asma','asla']))