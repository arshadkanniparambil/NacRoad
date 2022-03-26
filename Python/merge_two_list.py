# Definition for singly-linked list.
class ListNode:
     def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

def mergeTwoList(l1: ListNode,l2: ListNode):
    dummy = ListNode()
    tail = dummy
    
    while l1 and l2 :
        if l1.val < l2.val :
            tail.next = l1
            l1 = l1.next
        else:
            tail.next = l2
            l2 = l2.next
        tail = tail.next
    if l1 :
        tail.next = l1
    elif l2 :
        tail.next = l2
        
    return dummy.next

print(mergeTwoList([1,2,3,6,7],[2,3,4,7,9]))