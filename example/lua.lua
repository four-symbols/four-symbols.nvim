-- Lua Language Feature Coverage Example

-- 1. Variables and Data Types
local isDone = true -- Boolean
local count = 42 -- Number
local name = "Hello, Lua!" -- String
local list = { 1, 2, 3 } -- Table (array)
local dictionary = { -- Table (dictionary)
	key1 = "value1",
	key2 = "value2",
}

-- 2. Functions
local function greet(person) return "Hello, " .. person .. "!" end

local greetMessage = greet "World"
print(greetMessage)

-- 3. Control Structures

-- If statement
if count > 50 then
	print "Count is greater than 50"
elseif count == 50 then
	print "Count is exactly 50"
else
	print "Count is less than 50"
end

-- For loop
for i = 1, 5 do
	print("Iteration " .. i)
end

-- While loop
local i = 1
while i <= 5 do
	print("While loop iteration " .. i)
	i = i + 1
end

-- Repeat-until loop
i = 1
repeat
	print("Repeat-until iteration " .. i)
	i = i + 1
until i > 5

-- 4. Tables and Metatables
local person = {
	name = "Alice",
	age = 30,
}

-- Metatable with metamethods
local mt = {
	__index = function(table, key) return key .. " not found" end,
	__tostring = function(table) return "Person: " .. table.name .. ", Age: " .. table.age end,
}

setmetatable(person, mt)
print(person.name) -- Alice
print(person.address) -- "address not found" (uses __index)
print(person) -- Uses __tostring metamethod

-- 5. Modules and Namespaces
local MyModule = {}
MyModule.value = 100

function MyModule.sayHello() return "Hello from MyModule!" end

print(MyModule.sayHello())

-- 6. Coroutines
local co = coroutine.create(function()
	for i = 1, 3 do
		print("Coroutine iteration " .. i)
		coroutine.yield()
	end
end)

coroutine.resume(co)
coroutine.resume(co)
coroutine.resume(co)

-- 7. Error Handling
local function riskyFunction() error "An error occurred!" end

local status, err = pcall(riskyFunction)
if not status then print("Caught error: " .. err) end

-- 8. Object-Oriented Programming with Tables and Metatables
local Animal = {}
Animal.__index = Animal

function Animal:new(name, sound)
	local instance = setmetatable({}, Animal)
	instance.name = name
	instance.sound = sound
	return instance
end

function Animal:speak() print(self.name .. " says " .. self.sound) end

local dog = Animal:new("Buddy", "woof")
dog:speak()

-- 9. File I/O
local file = io.open("test.txt", "w")
file:write "Hello, file!"
file:close()

file = io.open("test.txt", "r")
local content = file:read "*a"
file:close()
print(content)

-- 10. Advanced Table Operations

-- Table concatenation
local table1 = { 1, 2 }
local table2 = { 3, 4 }
for _, v in ipairs(table2) do
	table.insert(table1, v)
end
print(table.concat(table1, ", "))

-- Table sorting
table.sort(table1, function(a, b) return a > b end)
print(table.concat(table1, ", "))

-- 11. Function with Variable Arguments
local function sum(...)
	local s = 0
	for _, v in ipairs { ... } do
		s = s + v
	end
	return s
end

print("Sum:", sum(1, 2, 3, 4, 5))

-- 12. Closures and Anonymous Functions
local function createCounter()
	local count = 0
	return function()
		count = count + 1
		return count
	end
end

local counter = createCounter()
print("Counter:", counter())
print("Counter:", counter())

-- 13. Bitwise Operations (Lua 5.3+)
local a, b = 5, 3
print("Bitwise AND:", a & b)
print("Bitwise OR:", a | b)
print("Bitwise XOR:", a ~ b)
print("Left Shift:", a << 1)
print("Right Shift:", b >> 1)

-- 14. Pattern Matching and String Manipulation
local text = "Lua is great!"
local matched = string.match(text, "Lua")
print("Matched:", matched)

local replaced = string.gsub(text, "great", "awesome")
print("Replaced:", replaced)

-- 15. JSON Parsing and Encoding (requires external library)
--[[
local json = require("json")
local obj = {name = "Alice", age = 30}
local jsonString = json.encode(obj)
print("JSON:", jsonString)
--]]

-- 16. Environment Manipulation (Lua 5.1 and LuaJIT)
setfenv(1, { print = function() end }) -- Disables the print function
print "This will not print" -- This line will have no output
