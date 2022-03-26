from typing import Optional


class LinkedList:
    def __init__(self,val=0,next=None):
        self.val = val
        self.next = next
        
class Solution:
    def removeDuplicates(self,head:Optional[LinkedList]) ->Optional[LinkedList]:
        curr = head
        while curr:
            if curr.next and curr.next.val ==curr.val:
                curr.next = curr.next.next
            curr = curr.next
        return head