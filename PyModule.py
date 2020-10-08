# This is a python module
# Here we are writing executable code

print("Welcome to Python module with name - PyModule.py")

# Functions inside Python file(without class), Module Functions

def testingPythonModuleFunction():
    print("This is a module function")

def sum(a,b):
    print(a+b)
    c=a+b
    return c

class A:
    def __init__(self):
        print("This is a contructor")
    def testing(self):
        print("This is my class function")