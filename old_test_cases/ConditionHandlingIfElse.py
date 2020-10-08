num1 = input("Enter a number: ")

for i in range(1, 11):
    if (int(num1) * i) %10 == 0:
        print("Here we have a multiple of 10: " + str( int(num1) * i))
        continue
    print("Loop " + str(i)+" " + str( int(num1) * i))
else: print("Loop finished")
