# import math
# x = int(input())
# z = []
# a = 0
# b = 0
# for i in range(x):
#     y = input().split()
#     z.append([int(q) for q in y])

# for i in range(x):
#     a += z[i][0]

# for i in range(x):
#     b += z[i][1]

# t1 = a / x
# t2 = b / x

# l = []

# for i in range(x):
#     l.append(math.sqrt(((z[i][0]-t1)**2)+((z[i][1]-t2)**2)))

# print(t1, t2)
# print(" ".join([str(i) for i in z[l.index(min(l))]]))

# # ============================================================

# x = int(input())
# y = []

# for i in range(x):
#     y.append([j for j in input()])

# for k in range(x):
#     for l in y:
#         print(l[k], end="")
#     print()

n = int(input())
l = ""
for k in range(1, n+1):
    l += str(k)
s = len(l)
t = 1
p = ""
for j in range(n):
    p += str(j+1)
    print(p.rjust(s))

    
    