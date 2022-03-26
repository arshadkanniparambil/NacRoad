from typing import List


class Solution:
    def plusOne(self, digits: List[int]) -> List[int]:
        carry =1
        i = 0
        digits = digits.reverse()
        
        while carry:
            if i < len(digits):
                if digits[i] == 9:
                    digits[i] = 0
                else:
                    digits[i] += 1
                    carry = 0
            else:
                digits.append(1)
                carry = 0
            i +=1
        return digits.reverse()
    
sln1 = Solution()
print(sln1.plusOne(digits=[1,3,9]))


