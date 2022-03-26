# def lengthOfLastWord(s: str) -> int:
#         s1 = s.split()
#         res = s1[-1]
#         return len(res)

# print(lengthOfLastWord('In the name of god'))

# from typing import List


# def removeDuplicates( nums: List[int]) -> int:
#     l = 0
#     for r in range(1,len(nums)):
#         if nums[r] != nums[l]:
#             l += 1
#             nums[l] = nums[r]
#     return l + 1,nums
# print(removeDuplicates([1,2,2,2,3,3,4]))

from typing import List


def longestCommonPrefix(strs:List[str]):
    if len(strs) == 0 :
        return ''
    
    minlen = len(strs[0])
    for i in range(len(strs)):
        minlen = min(len(strs[i]),minlen)
    i = 0
    lcp = ''
    for i in range(minlen):
        char = strs[0][i]
        for j in range(1,minlen):
            if strs[j][i] != char:
                return lcp
        lcp += char
    return lcp
        
        