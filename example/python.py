# Python Language Feature Coverage Example

# 1. Basic Types and Variables
is_done = True       # Boolean
count = 42           # Integer
pi = 3.14159         # Float
name = "Python"      # String
colors = ["red", "green", "blue"]  # List
person = {"name": "Alice", "age": 30}  # Dictionary
unique_numbers = {1, 2, 3}  # Set
coordinate = (10, 20)  # Tuple

# 2. Functions and Control Flow
def add(x, y):
    return x + y

def control_flow(x):
    if x > 10:
        print("x is greater than 10")
    elif x == 10:
        print("x is exactly 10")
    else:
        print("x is less than 10")

for i in range(5):
    print(f"for loop: {i}")

count = 0
while count < 5:
    print(f"while loop: {count}")
    count += 1

# 3. Classes and Inheritance
class Animal:
    def __init__(self, name):
        self.name = name

    def speak(self):
        print(f"{self.name} makes a sound")

class Dog(Animal):
    def __init__(self, name):
        super().__init__(name)

    def speak(self):
        print(f"{self.name} says woof")

dog = Dog("Buddy")
dog.speak()

# 4. Lambda Functions
add_one = lambda x: x + 1
print(f"5 + 1 = {add_one(5)}")

# 5. List Comprehensions
squares = [x * x for x in range(10)]
print("Squares:", squares)

# 6. Dictionary Comprehensions
square_dict = {x: x * x for x in range(10)}
print("Square Dictionary:", square_dict)

# 7. Exception Handling
try:
    result = 10 / 0
except ZeroDivisionError as e:
    print("Caught an error:", e)
finally:
    print("This runs no matter what")

# 8. File I/O
with open("test.txt", "w") as f:
    f.write("Hello, file!")

with open("test.txt", "r") as f:
    content = f.read()
    print("File Content:", content)

# 9. Generators
def fibonacci(n):
    a, b = 0, 1
    while a < n:
        yield a
        a, b = b, a + b

for num in fibonacci(10):
    print("Fibonacci:", num)

# 10. Decorators
def my_decorator(func):
    def wrapper():
        print("Something before the function")
        func()
        print("Something after the function")
    return wrapper

@my_decorator
def say_hello():
    print("Hello!")

say_hello()

# 11. Modules and Imports
import math
print("Square root of 16 is:", math.sqrt(16))

# 12. List and Dictionary Methods
colors.append("yellow")
print("Colors:", colors)
person.update({"location": "Wonderland"})
print("Person:", person)

# 13. Sets and Set Operations
set1 = {1, 2, 3}
set2 = {3, 4, 5}
print("Union:", set1 | set2)
print("Intersection:", set1 & set2)
print("Difference:", set1 - set2)

# 14. Context Managers (with statement)
with open("test.txt", "w") as f:
    f.write("Using context manager to write.")

# 15. Complex Numbers and Type Hinting
z: complex = 2 + 3j
print("Complex Number:", z)

def add_numbers(a: int, b: int) -> int:
    return a + b

print("Add Numbers:", add_numbers(3, 4))

# 16. Data Classes
from dataclasses import dataclass

@dataclass
class Point:
    x: int
    y: int

p = Point(10, 20)
print("Data Class Point:", p)

# 17. Type Annotations with Union
from typing import Union

def process_data(data: Union[int, str]):
    if isinstance(data, int):
        print("Processing integer:", data)
    elif isinstance(data, str):
        print("Processing string:", data)

process_data(10)
process_data("hello")

# 18. Asyncio for Asynchronous Programming
import asyncio

async def async_hello():
    print("Hello...")
    await asyncio.sleep(1)
    print("...world!")

asyncio.run(async_hello())

# 19. Regular Expressions
import re

pattern = r"\bhello\b"
text = "hello world"
match = re.search(pattern, text)
if match:
    print("Regex Match Found:", match.group())

# 20. Enumerations
from enum import Enum

class Direction(Enum):
    NORTH = 1
    SOUTH = 2
    EAST = 3
    WEST = 4

print("Direction Enum:", Direction.NORTH)

# 21. Map, Filter, and Reduce
from functools import reduce

numbers = [1, 2, 3, 4, 5]
squared_numbers = list(map(lambda x: x * x, numbers))
print("Squared Numbers:", squared_numbers)

even_numbers = list(filter(lambda x: x % 2 == 0, numbers))
print("Even Numbers:", even_numbers)

sum_of_numbers = reduce(lambda x, y: x + y, numbers)
print("Sum of Numbers:", sum_of_numbers)
