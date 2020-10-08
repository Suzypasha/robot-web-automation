a = "madam"
l = len(a)
b = ""
for i in range(l - 1, -1, -1):
        b = b + a[i]
if a == b:
    print("b is a palendrome")
else:
    print("b is not a palendrome")