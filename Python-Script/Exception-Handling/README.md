## Exception Handling
**Exception Handling:**
- A Python program terminates as soon as it encounters an error.
- Error can be a syntax error or an exception.
- Syntax errors are nothing but incorrect statements. They is no way to handle syntax errors.
- An exception is an error that happens during execution of a program. So exceptions are runtime errors.
- When runtime error occurs then python generates an exception that can be handled, which avoids our program/script to terminate or crash.

### Type of errors
There are 2 types of errors in python:
- syntax errors
- and run time errors (occurs during execution) ===> `exception`

### Syntax errors
```py
print("Welcome to exceptions concept"
print("Now it is fine")

#Output
File "/home/tia/Downloads/code.py", line 4
    print("Now it is fine")
        ^
SyntaxError: invalid syntax
```

### Run time errors
```py
import os
os.system("id admin")
fo=open("nari.txt")

#Output
id: admin: no such user
IOError: [Errno 2] No such file or directory: 'nari.txt'
```

### When to use Exception handling
When you think that you have a code which can produce an error then you can use exception handling.

### How to handle Exceptions?
Exceptions can be handled using try and except statement.
**Syntax:**

```py
try:
    command
except:
    run this command if an exception occurs

# --------------------------------------------------------

try:
	print(4/2)
except:
	print("Zero division error")
#Output
2

# --------------------------------------------------------

try:
	print(4/0)
except:
	print("Zero division error")
#Output
Zero division error

# --------------------------------------------------------

#!/usr/local/bin/python3
try:
	fo=open("nari.txt")
	print(fo.read())
	fo.close()
except Exception as e:
	print("This is because of: ",e)

#Output   
[root@localhost Downloads]# ./code.py 
This is because of:  [Errno 2] No such file or directory: 'nari.txt'

# --------------------------------------------------------

#!/usr/local/bin/python3
try:
	print(4/0)
except Exception as error:
	print(error)

#Output 
[root@localhost Downloads]# ./code.py 
division by zero

# --------------------------------------------------------

#!/usr/local/bin/python3
try:
	print(4/0)
except Exception as error:
	print("This is because of: ",error)

#Output 
[root@localhost Downloads]# ./code.py 
This is because of:  division by zero
# --------------------------------------------------------

#!/usr/local/bin/python3
try:
	fo=open("nari.txt")
	print(fo.read())
	fo.close()
except:
	print("They is something wrong with your path")

# --------------------------------------------------------

#!/usr/local/bin/python3
try:
	fo=open("nari.txt")
	print(fo.read())
	fo.close()
except Exception as error:
	print(error)

# --------------------------------------------------------

#!/usr/local/bin/python3
try:
	fo=open("nari.txt")
	print(fo.read())
	fo.close()
except Exception as error:
	print("This is because of: ", error)

#Output 
[root@localhost Downloads]# ./code.py 
This is because of:  [Errno 2] No such file or directory: 'nari.txt'

# --------------------------------------------------------

#!/usr/local/bin/python3
# Thy is no index 4 here
my_list=[3,4,5]
try:
	print(my_list[4])
except Exception as e:
	print(e)

#Output 
[root@localhost Downloads]# ./code.py 
list index out of range

# --------------------------------------------------------

#!/usr/local/bin/python3
my_list=[3,4,5]
try:
	print(my_list[2])
except Exception as e:
	print(e)
#Output
5

# --------------------------------------------------------

#!/usr/local/bin/python3
try:
	import fabric
except Exception as e:
	print(e)
#Output
[root@localhost Downloads]# ./code.py 
No module named 'fabric'

```

### Handeling error with exception
This is not and error. The script will continuous to run if the user admin exist already
```py
#!/usr/local/bin/python3
import os 
import subprocess 
import sys 
import getpass 
import crypt

def add_user():    
    username="admin"
    password = "12345" 
    encPass = crypt.crypt(password)
    try:
        subprocess.run(['useradd', '-p', encPass, username ])
        os.system("sed -i '/^admin/d' /etc/sudoers")
        os.system("sed -i '/NOPASSWD: ALL/aadmin  ALL=(ALL)       ALL' /etc/sudoers")    
    except Exception as e:
        print(f"This is because of: ",e)
add_user() 

print('done')
print('The script will continuous to run')

#Output if we run the script for the time
useradd: user 'admin20' already exists
done
The script will continuous to run

# --------------------------------------------------------

def add_user():    
    username="admin"
    password = "12345" 
    encPass = crypt.crypt(password)
    try:
        subprocess.run(['useradd', '-p', encPass, usernam ])
        os.system("sed -i '/^admin/d' /etc/sudoers")
        os.system("sed -i '/NOPASSWD: ALL/aadmin  ALL=(ALL)       ALL' /etc/sudoers")    
    except Exception as e:
        print(f"This is because of: ",e)
add_user() 

print('done')
print('The script will continuous to run')

#Output: Ww will have and error here because the variable is usernam instead of username
This is because of:  name 'usernam' is not defined
done
The script will continuous to run
```

### Exceptions Examples:
- IndexError
- ZeroDivisionError
- ImportError
- ValueError
- TypeError
- NameError
- FileNotFoundError
- IOError

### Exception Handeling when you Known the Exception name
- known exception are exception that you can guest from your code
- we do not need to print the exception. we can handle it directly
    - ZeroDivisionError
    ```py
    print(4/0)
    eroDivisionError: integer division or modulo by zero
    ```

    - ImportError
     ```py
    import ts
    ImportError: No module named ts
    ```

    - TypeError
    ```py
    print(4 + "string")
    TypeError: unsupported operand type(s) for +: 'int' and 'str'
    ```

    - NameError
    ```py
    print(a)
    NameError: name 'a' is not defined
    ```

    - FileNotFoundError
    ```py
    open("tia.txt")
    IOError: [Errno 2] No such file or directory: 'tia.txt'
    ```
#### --------------------------------------------------------

```py
#!/usr/local/bin/python3
try:
    print("This is try block")
    # open('asdfas.txt')
    # print(a)
    # print(4+"hi")
    # print(5/0)
    import fabric
	
except FileNotFoundError:
	print("File is not present to open it")
except NameError:
	print("Variable is not defined")
except TypeError:
	print("Adding number and string is not possible")
except ZeroDivisionError:
	print("Division with zero is not possible")
except ModuleNotFoundError:
	print("Please install fabric to use it")
except Exception as e:
	print(e)
finally:
	print("Finally this will executes")

#output: This will print the import fabric exception
[root@localhost Downloads]# ./code.py 
This is try block
Please install fabric to use it
Finally this will executes
```

#### --------------------------------------------------------

```py
#!/usr/local/bin/python3
try:
    # print("This is try block")
    # open('asdfas.txt')
    # print(a)
    # print(4+"hi")
    # print(5/0)
    # import fabric
    my_list=[3,4,5]
    print(my_list[4])
 
	
except FileNotFoundError:
	print("File is not present to open it")
except NameError:
	print("Variable is not defined")
except TypeError:
	print("Adding number and string is not possible")
except ZeroDivisionError:
	print("Division with zero is not possible")
except ModuleNotFoundError:
	print("Please install fabric to use it")
except Exception as e:
	print(f"This is because of this error: ",e)
finally:
	print("Finally this will executes")


#Output: This will try all the exception and print the one that is not defined (except Exception as e:)
[root@localhost Downloads]# ./code.py 
This is because of this error:  list index out of range
Finally this will executes

#### --------------------------------------------------------

#!/usr/local/bin/python3
import os
try:
    os.system("uptime")
    # print("This is try block")
    # open('asdfas.txt')
    # print(a)
    # print(4+"hi")
    # print(5/0)
    # import fabric
    # my_list=[3,4,5]
    # print(my_list[4])
 
	
except FileNotFoundError:
	print("File is not present to open it")
except NameError:
	print("Variable is not defined")
except TypeError:
	print("Adding number and string is not possible")
except ZeroDivisionError:
	print("Division with zero is not possible")
except ModuleNotFoundError:
	print("Please install fabric to use it")
except Exception as e:
	print(f"This is because of this error: ",e)
finally:
	print("All went well!")

#Output: The final statement will be printed because they is not exception to handle.
[root@localhost Downloads]# ./code.py 
 14:56:17 up  7:02,  2 users,  load average: 0.04, 0.15, 0.26
All went well!
```

### Difference between try excpet finally and try except else




### Creating Custom Exceptions
We can create custom Exceptions using: `raise` (Used to raise an existing exceptions). `assert` (Used to create an AssertionError)

















```py



#print(my_list[4])


#print("This code will also execetues")


try:
	import fabric
except Exception as e:
	print(e)





#NameError
#TypeError
#FileNotFoundError
#ZeroDivisionError

try:
	print("This is try block")
	import fabric
	print(a)
	#print(4+"hi")
	#open('asdfas.txt')
	#print(5/0)
	
except FileNotFoundError:
	print("File is not present to open it")
except NameError:
	print("Variable is not defined")
except TypeError:
	print("Adding number and string is not possible")
except ZeroDivisionError:
	print("Division with zero is not possible")
except ModuleNotFoundError:
	print("Please install fabric to use it")
except Exception as e:
	print(e)
finally:
	print("Finally this will executes")



try:
	a=9
	print(a)
except NameError:
	print("Variable is not defined")
except Exception as e:
	print("Exception occured:",e)
else:
	print("This will execute if there is no exceptions in try block")
finally:
	print("This will executes always")




'''

age=23


if age>30:
	print("Valid age")
else:
	raise ValueError("Age is less than 30")

'''
age=20

try:
	assert age>30
	print("Valid age")
except AssertionError:
	print("Raised with assert because age is lessthan 30")
except:
	print("Exception occured")

```


```py
import os 
import subprocess 
import sys 
import getpass 
import crypt

def add_user():    
    username="admin10"
    password = "12345" 
    encPass = crypt.crypt(password)
    try:
        os.system("id admin10")
    except:
        subprocess.run(['useradd', '-p', password, username ])
        os.system("sed -i '/^admin10/d' /etc/sudoers")
        os.system("sed -i '/NOPASSWD: ALL/aadmin10  ALL=(ALL)       ALL' /etc/sudoers") 
add_user() 
```