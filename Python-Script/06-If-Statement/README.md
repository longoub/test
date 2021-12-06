### Exercise 1
```py
a = 6
b = 5
if a < b:
    print("a is less than to b")
else: 
    print("a is grater b")

# Output
a is grater b
```

### Exercise 2
```py
c = 8                                                         
d = 7
if c < d:
    print("c is less than d")
elif c == d:
    print("c is equal to d")
else:
    print("c is geater than d")

# Output
c is geater than d
```

### Exercise 3
```py
a = 6                                                                              
b = 4
if a < b:
    print("a is less than b")
    print("a is definntel less than b")
elif a == b:
    print("a is equal to b")
    print("a is definitely equal to b")
else:
    print("a is greater than b")
    print("a is definitely greater than b")

# Output
a is greater than b                                                                                                        
a is definitely greater than b
```

### Exercise 
```py
a = 5
b = 5
if a < b:
    print("GOOD")
elif a == b:
    print("BAD")
    print("this product is not good")
    print("we need to change it")
else:
    print("VERY GOOG")                                                                                                                                                                                                                                 
                    
# Output
BAD
this product is not good
we need to change it
```

### Exercise 
```py                                                                                                                                        
a = 5
b = 5
if a < b:
    print("a is less than b")
else:                                                                             
    if a == b:
        print("a is equal to b")
    else:
        print("a is greater than b")

OR 
a = 5
b = 5
if a < b or a == b:
    print("true")
else:
	print("false")


# Output
a is equal to b
true
```

### Exercise 
```py
# else statement
x = 8
y = 4
if x < y:
    print (x)
    print("x is less than y")
    print("x is definitely less than y")
elif x == y:
        print("x is equal to y")
else:
    print (y)
    print("x is greater than y")
    print("x is definitly greater than y")

# Output
4
x is greater than y
x is definitly greater than y
```

## Practice with conditional statement 
Read a number between 1-10 and display it in words

### Example 1
```py
import sys

def num():
    num=eval(input("Enter a number between 1-10: "))
    if num == 1:
        print("One")
        sys.exit()
    elif num == 2:
        print("Two")
        sys.exit()
    elif num == 3:
        print("Three")
        sys.exit()
    elif num == 4:
        print("Four")
        sys.exit()
    elif num == 5:
        print("Five")
        sys.exit()
    elif num == 6:
        print("Six")
        sys.exit()
    if num == 7:
        print("Seven")
        sys.exit()
    elif num == 8:
        print("Eight")
        sys.exit()
    elif num == 9:
        print("Nine")
        sys.exit()
    elif num == 10:
        print("Ten")
        sys.exit()
    else:
        print("Invalid number")
        sys.exit()
num()
```

### Example 2
```py
def num():
    num=eval(input("Enter a number between 1-10: "))
    if num == 1:
        print("One")
    elif num == 2:
        print("Two")
    elif num == 3:
        print("Three")
    elif num == 4:
        print("Four")
    elif num == 5:
        print("Five")
    elif num == 6:
        print("Six")
    elif num == 7:
        print("Seven")
    elif num == 8:
        print("Eight")
    elif num == 9:
        print("Nine")
    elif num == 10:
        print("Ten")
    elif num not in [1,2,3,4,5,6,7,8,9,10]:
        print("Your number is out of range. Please select between 1-10")
num()
```

### Example 3
```py
def num():
    num=eval(input("Enter a number between 1-10: "))
    if num == 1:
        print("One")
    if num == 2:
        print("Two")
    if num == 3:
        print("Three")
    if num == 4:
        print("Four")
    if num == 5:
        print("Five")
    if num == 6:
        print("Six")
    if num == 7:
        print("Seven")
    if num == 8:
        print("Eight")
    if num == 9:
        print("Nine")
    if num == 10:
        print("Ten")
    if num not in [1,2,3,4,5,6,7,8,9,10]:
        print("Your number is out of range. Please select between 1-10")
num()
```


### Example 4 (Better soulution)
```py
def num():

    num=eval(input("Enter a number between 1-10: "))
    if num in  [1,2,3,4,5,6,7,8,9,10]:
        if num == 1:
            print("One")
        elif num == 2:
            print("Two")
        elif num == 3:
            print("Three")
        elif num == 4:
            print("Four")
        elif num == 5:
            print("Five")
        elif num == 6:
            print("Six")
        elif num == 7:
            print("Seven")
        elif num == 8:
            print("Eight")
        elif num == 9:
            print("Nine")
        elif num == 10:
            print("Ten")
    else:
        print("Your number is out of range. Please select between 1-10")
          
num()


### Example 4 (much better soulution)
```py
def num():

    num=eval(input("Enter a number between 1-10: "))
    if num in  [1,2,3,4,5,6,7,8,9,10]:
        if num == 1:
            print("One")
        elif num == 2:
            print("Two")
        elif num == 3:
            print("Three")
        elif num == 4:
            print("Four")
        elif num == 5:
            print("Five")
        elif num == 6:
            print("Six")
        elif num == 7:
            print("Seven")
        elif num == 8:
            print("Eight")
        elif num == 9:
            print("Nine")
        else:
            print("Ten")
    else:
        print("Your number is out of range. Please select between 1-10")
          
num()
```

### Example 4 (perfait soulution)
```py
def num_function():

    num=eval(input("Enter a number between 1-10: "))
    num_word={1:'One',2:'Two',3:'Three',4:'Four',5:'Five',6:'Six',7:'Seven',8:'Eight',9:'Nine',10:'Ten'}
    
    if num in [1,2,3,4,5,6,7,8,9,10]:
       print(num_word.get(num))
    else:
        print("Your number is out of range. Please select between 1-10")
          
num_function()
```