def lastStone(stones):
    if len(stones) == 0:
        return 0
    if len(stones) == 1:
        return 1
    while len(stones) > 1:
        stones.sort()
        s1 = stones.pop()
        s2 = stones.pop()
        s3 = abs(s1-s2)
        if s1 != s2:
            stones.append(s3)

    if len(stones):
        return stones[-1]
    return 0
print(lastStone([2,3,4,5,6,7,32,5]))

