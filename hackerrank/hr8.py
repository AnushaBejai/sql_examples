n = int(input())
arr = list(map(int, input().split()))
arr.sort()
for i in reversed(range(len(arr))):
    if arr[i-1]<arr[i]:
        print(arr[i-1])
        break
