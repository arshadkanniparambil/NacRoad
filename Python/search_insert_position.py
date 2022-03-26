from typing import List


def searchInsertPosition(arr:List[int],target:List[int]):
    l=0
    r = len(arr)
    
    while l<=r:
        mid = (l+r)//2
        if target == arr[mid]:
            return mid
        elif target > arr[mid]:
            l = mid + 1
        else:
            r = mid - 1
    return l
print(searchInsertPosition([1,2,3,5,7,9],6))