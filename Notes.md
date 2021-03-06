# RUBY COLLECTION OF TRINKETS

- [RUBY COLLECTION OF TRINKETS](#ruby-collection-of-trinkets)
  - [CONTROL FLOW](#control-flow)
    - [Conditional Statements](#conditional-statements)
    - [Boolean Logic](#boolean-logic)
    - [Logical Operators](#logical-operators)
    - [Case Statements](#case-statements)
    - [Unless Statement](#unless-statement)
    - [Ternary Operator](#ternary-operator)
  - [LOOPS](#loops)
    - [Break and Next Keywords](#break-and-next-keywords)
    - [While Loops](#while-loops)
    - [Until Loops](#until-loops)
    - [Ranges and For Loops](#ranges-and-for-loops)
    - [Times Loop](#times-loop)
    - [Upto and Downto Loops](#upto-and-downto-loops)
    - [Do While](#do-while)
  - [ARRAYS](#arrays)
    - [Creating Arrays](#creating-arrays)
    - [Accessing Elements](#accessing-elements)
    - [Adding and Removing Elements](#adding-and-removing-elements)
    - [Adding ans Subtracting Arrays](#adding-ans-subtracting-arrays)
    - [Basic Methods](#basic-methods)
    - [Convert Array Into String - And Vice Versa](#convert-array-into-string---and-vice-versa)
    - [Slicing an Array](#slicing-an-array)
  - [HASHES](#hashes)
    - [Creating Hashes](#creating-hashes)
    - [Accessing Values](#accessing-values)
    - [Adding and Changing Data](#adding-and-changing-data)
    - [Methods](#methods)
    - [Symbols as Hash Keys](#symbols-as-hash-keys)
    - [Iterating over Hashes](#iterating-over-hashes)
    - [Hashes as Optional Parameters](#hashes-as-optional-parameters)
    - [Common Hash Methods](#common-hash-methods)
  - [METHODS](#methods-1)
    - [Creating a Method](#creating-a-method)
    - [What Methods Return](#what-methods-return)
    - [Chaining Methods](#chaining-methods)
    - [Predicate Methods and Bang Methods](#predicate-methods-and-bang-methods)
  - [ENUMERABLES](#enumerables)
    - [select and reject](#select-and-reject)
    - [each and each_with_index](#each-and-each_with_index)
    - [map](#map)
    - [select or filter](#select-or-filter)
    - [reduce](#reduce)
    - [include?](#include)
    - [any?](#any)
    - [all?](#all)
    - [none?](#none)
    - [Other methods](#other-methods)
  - [NESTED COLLECTIONS](#nested-collections)
    - [Nested Arrays](#nested-arrays)
      - [Accessing Elements in Nested Arrays](#accessing-elements-in-nested-arrays)
      - [Creating Nested Array](#creating-nested-array)
      - [Adding and Removing Elements in Nested Arrays](#adding-and-removing-elements-in-nested-arrays)
      - [Iterating Over Nested Arrays](#iterating-over-nested-arrays)
    - [Nested Hashes](#nested-hashes)
      - [Accessing Data in Nested Hashes](#accessing-data-in-nested-hashes)
      - [Adding and Removing Data in Nested Hashes](#adding-and-removing-data-in-nested-hashes)
      - [Methods for Nested Arrays](#methods-for-nested-arrays)
  - [OBJECT ORIENTED PROGRAMMING](#object-oriented-programming)
    - [Classes](#classes)
    - [Variables and Classes](#variables-and-classes)
    - [Class Inheritance](#class-inheritance)
    - [Reader and Writer](#reader-and-writer)
    - [Module](#module)
  - [EXCEPTION AND ERROR HANDLING](#exception-and-error-handling)
    - [Demosntrating Exceptions](#demosntrating-exceptions)
    - [Flow of Exception Handling](#flow-of-exception-handling)
    - [Exception and Error Classes](#exception-and-error-classes)
    - [Exception Error Tree](#exception-error-tree)
  - [INPUT/OUTPUT](#inputoutput)
    - [I/O in Ruby](#io-in-ruby)
    - [The IO Class](#the-io-class)
    - [Position](#position)
    - [Sub-classes and Duck-types](#sub-classes-and-duck-types)
      - [File](#file)
      - [Sockets](#sockets)
      - [StringIO](#stringio)
      - [Tempfile](#tempfile)
  - [READING FROM AND WRITING DIRECTLY TO FILES](#reading-from-and-writing-directly-to-files)
    - [Writing to a File](#writing-to-a-file)
    - [Reading from a file](#reading-from-a-file)
      - [`readline` and `readlines`](#readline-and-readlines)
    - [Closing files](#closing-files)
    - [File existance and properties](#file-existance-and-properties)
      - [`File.exists?`](#fileexists)
      - [`Dir` class](#dir-class)
  - [FILES AND SERIALIZATION](#files-and-serialization)
    - [YAML](#yaml)
    - [JSON](#json)
    - [MessagePack](#messagepack)
    - [Modularize with Mixins](#modularize-with-mixins)

## CONTROL FLOW

### Conditional Statements

```ruby
if statement_to_be_evaluated == true
  # do something awesome...
end

if 1 < 2
  puts "Hot diggity, 1 is less than 2!"
end
#=> Hot diggity, 1 is less than 2!
```

```ruby
# One liner:
puts "Hot diggity damn, 1 is less than 2" if 1 < 2
```

```ruby
if attack_by_land == true
  puts "release the goat"
elsif attack_by_sea == true
  puts "release the shark"
else
  puts "release Kevin the octopus"
end
```

### Boolean Logic

**Equal:**

```ruby
5 == 5 #=> true
5 == 6 #=> false

puts "x is 3" if x == 3
```

**Not Equal:**

```ruby
5 != 7 #=> true
5 != 5 #=> false
```

**Greater Than:**

```ruby
7 > 5 #=> true
5 > 7 #=> false
```

**Less Than:**

```ruby
5 < 7 #=> true
7 < 5 #=> false
```

**Greather Than or Equal To:**

```ruby
7 >= 7 #=> true
7 >= 5 #=> true
```

**Less Than or Equal To:**

```ruby
5 <= 5 #=> true
5 <= 7 #=> true
```

**`eql?`:** checks both the value type and the actual value it holds

```ruby
5.eql?(5.0) #=> false; although they are the same value, one is an integer and the other is a float
5.eql?(5)   #=> true
```

**`equal?`:** checks whether both values are the exact same object in memory

```ruby
a = 5
b = 5
a.equal?(b) #=> true

a = "hello"
b = "hello"
a.equal?(b) #=> false

# Computers can???t store strings in the same efficient way they store numbers. Although the values of the variables are the same, the computer has created two separate string objects in memory
```

**`<=>`** *(spaceship operator)* returns the following:

- `1` if the value on the left is less than the value on the right;
- `0` if the value on the left is equal to the value on the right; and
- `1` if the value on the left is greater than the value on the right.

```ruby
5 <=> 10    #=> -1
10 <=> 10   #=> 0
10 <=> 5    #=> 1
```

### Logical Operators

**`&&` Operator:**

```ruby
if 1 < 2 && 5 < 6
  puts "Party at Kevin's!"
end
```

**`||` Operator:**

```ruby
if 10 < 2 || 5 < 6 
  puts "Party at Kevin's!"
end
```

**`!` Operator:**

```ruby
if !false     #=> true

if !(10 < 5)  #=> true

if !(4 == 4)  #=> false
```

**Order of precedence:**

1. `<=`, `<`, `>`, `>=` *- Comparison*
2. `==`, `!=` *- Equality*
3. `&&` *- Logical AND*
4. `||` *- Logical OR*

```ruby
if x && y || z
  # do something
end

# First the x && y statement will be executed. 

# If that statement is true, then the program will execute the "do something code" on the next line. 

# If the x && y statement is false, then the z will be evaluated.

# If the z is true, the code on the next line will be evaluated.

# If the z is false, then the code will exit the if statement.
```

### Case Statements

```ruby
grade = 'F'

did_i_pass = case grade #=> create a variable `did_i_pass` and assign the result of a call to case with the variable grade passed in
  when 'A' then "Hell yeah!"
  when 'D' then "Don't tell your mother."
  else "'YOU SHALL NOT PASS!' -Gandalf"
end
```

```ruby
grade = 'F'

case grade
when 'A'
  puts "You're a genius"
  future_bank_account_balance = 5_000_000
when 'D'
  puts "Better luck next time"
  can_i_retire_soon = false
else
  puts "'YOU SHALL NOT PASS!' -Gandalf"
  fml = true
end
```

```ruby
a = 5

case a
when 5
  puts "a is 5"
when 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end
```

### Unless Statement

```ruby
age = 19
puts "Welcome to a life of debt." unless age < 18

unless age < 18
  puts "Down with that sort of thing."
else
  puts "Careful now!"
end

puts "x is NOT 3" unless x == 3
```

### Ternary Operator

```ruby
age = 19
response = age < 18 ? "You still have your entire life ahead of you." : "You're all grown up."
puts response #=> "You're all grown up."
```

```ruby
true ? "this is true" : "this is not true"
# => "this is true"

false ? "this is true" : "this is not true"
# => "this is not true"
```

## LOOPS

### Break and Next Keywords

```ruby
i = 0
loop do
  i = i + 2
  if i == 4
    next        # skip rest of the code in this iteration
  end
  puts i
  if i == 10    # break out from the loop
    break
  end
end

# => 2
# => 6
# => 8
# => 10
```

### While Loops

```ruby
i = 0
while i < 10 do
 puts "i is #{i}"
 i += 1
end
```

```ruby
while gets.chomp != "yes" do
  puts "Will you go to prom with me?"
end
```

### Until Loops

```ruby
i = 0
until i >= 10 do
 puts "i is #{i}"
 i += 1
end
```

```ruby
until gets.chomp == "yes" do
  puts "Will you go to prom with me?"
end
```

### Ranges and For Loops

```ruby
(1..5)      # inclusive range: 1, 2, 3, 4, 5
(1...5)     # exclusive range: 1, 2, 3, 4

# We can make ranges of letters, too!
('a'..'d')  # a, b, c, d
```

```ruby
for i in 0..5
  puts "#{i} zombies incoming!"
end
```

```ruby
x = [1, 2, 3, 4, 5]

for i in x.reverse do   # reverse the array to ensure a proper countdown
  puts i
end

puts "Done!"
```

### Times Loop

```ruby
5.times do
  puts "Hello, world!"
end
```

```ruby
5.times do |number|
  puts "Alternative fact number #{number}"
end
```

### Upto and Downto Loops

```ruby
5.upto(10) {|num| print "#{num} " }     #=> 5 6 7 8 9 10

10.downto(5) {|num| print "#{num} " }   #=> 10 9 8 7 6 5
```

### Do While

```ruby
loop do
  puts "Do you want to do that again?"
  answer = gets.chomp
  if answer != 'Y'
    break
  end
end
```

```ruby
begin
  puts "Do you want to do that again?"
  answer = gets.chomp
end while answer == 'Y'

# Another construct, not recomended.
```

## ARRAYS

### Creating Arrays

```ruby
num_array = [1, 2, 3, 4, 5]
str_array = ["This", "is", "a", "small", "array"]
```

```ruby
Array.new               #=> []
Array.new(3)            #=> [nil, nil, nil]
Array.new(3, 7)         #=> [7, 7, 7]
Array.new(3, true)      #=> [true, true, true]
```

You can avoid having to type the quotes for every string by creating an array with `%w`.

```ruby
users = %w(john david peter)
# => ["john", "david", "peter"]
```

### Accessing Elements

```ruby
str_array = ["This", "is", "a", "small", "array"]

str_array[0]            #=> "This"
str_array[1]            #=> "is"
str_array[4]            #=> "array"
str_array[-1]           #=> "array"
str_array[-2]           #=> "small"
```

```ruby
str_array = ["This", "is", "a", "small", "array"]

str_array.first         #=> "This"
str_array.first(2)      #=> ["This", "is"]
str_array.last(2)       #=> ["small", "array"]
```

### Adding and Removing Elements

**Push and Pop:**

```ruby
num_array = [1, 2]

num_array.push(3, 4)      #=> [1, 2, 3, 4]
num_array << 5            #=> [1, 2, 3, 4, 5]
num_array.pop             #=> 5
num_array                 #=> [1, 2, 3, 4]
```

**Unshift and Shift:**

```ruby
num_array = [2, 3, 4]

num_array.unshift(1)      #=> [1, 2, 3, 4]
num_array.shift           #=> 1
num_array                 #=> [2, 3, 4]
```

Both can take `int` arguments

```ruby
num_array = [1, 2, 3, 4, 5, 6]

num_array.pop(3)          #=> [4, 5, 6]
num_array.shift(2)        #=> [1, 2]
num_array                 #=> [3]
```

### Adding ans Subtracting Arrays

```ruby
a = [1, 2, 3]
b = [3, 4, 5]

a + b         #=> [1, 2, 3, 3, 4, 5]
a.concat(b)   #=> [1, 2, 3, 3, 4, 5]
```

```ruby
[1, 1, 1, 2, 2, 3, 4] - [1, 4]  #=> [2, 2, 3]

# This method returns a copy of the first array, removing any elements that appear in the second array.
```

### Basic Methods

```ruby
[].empty?                           #=> true
[[]].empty?                         #=> false
[1, 2].empty?                       #=> false

[1, 2, 3].length                    #=> 3
[1, 2, 3].size                      #=> 3

[1, 2, 3].reverse                   #=> [3, 2, 1]

[1, 2, 3].include?(3)               #=> true
[1, 2, 3].include?("3")             #=> false

[1, 2, 3].join                      #=> "123"
[1, 2, 3].join("-")                 #=> "1-2-3"

[1, 2, [3, 4, 5], [6, 7]]. flatten  #=> [1, 2, 3, 4, 5, 6, 7]
```

**Map Method:**

Iterates over an array applying a block to each element of the array and returns a new array with those results.

```ruby
a = [1, 2, 3, 4]
# => [1, 2, 3, 4]

a.map { |num| num**2 }

# => [1, 4, 9, 16]

a
# => [1, 2, 3, 4]
```

**Delete_At:**

Eliminate the value at a certain index from your array. Mutates the original array.

```ruby
a = [1, 2, 3, 4]
# => [1, 2, 3, 4]

a.delete_at(1)
# => 2

a
# => [1, 3, 4]
```

**Delete:**

Eliminate the all instances of an element by its value and returns it. Mutates the original array.

```ruby
my_pets = ["cat", "dog", "bird", "cat", "snake"]
#=> ["cat", "dog", "bird", "cat", "snake"]

my_pets.delete("cat")
# => "cat"

my_pets
# => ["dog", "bird", "snake"]
```

**Uniq:**

Iterates through an array, deletes any duplicate values that exist, then returns the result as a new array.

```ruby
b = [1, 1, 2, 2, 3, 3, 4, 4]
#=> [1, 1, 2, 2, 3, 3, 4, 4]

b.uniq
#=> [1, 2, 3, 4]

b
# => [1, 1, 2, 2, 3, 3, 4, 4]
```

```ruby
b = [1, 1, 2, 2, 3, 3, 4, 4]
# => [1, 1, 2, 2, 3, 3, 4, 4]

b.uniq!                 # The '!' mutates the original array
# => [1, 2, 3, 4]

b
# => [1, 2, 3, 4]
```

**sample:**

Picks one random element from an array

```ruby
numbers = [1, 3, 3, 5, 5]
numbers.sample

# => 3
```

**Iterating with Select:**

```ruby
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

numbers.select { |number| number > 4 }
# => [5, 6, 7, 8, 9, 10]

numbers
# => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
```

**to_s and interpolation on array:**

```ruby
a = [1, 2, 3]
#=> [1, 2, 3]

"It's as easy as #{a}"
# => "It's as easy as [1, 2, 3]"
```

**each_index:**

```ruby
a = [1, 2, 3, 4, 5]
# => [1, 2, 3, 4, 5]

a.each_index { |i| puts "This is index #{i}" }
# This is index 0
# This is index 1
# This is index 2
# This is index 3
# This is index 4
# => [1, 2, 3, 4, 5]
```

**each_with_index:**

```ruby
a = [1, 2, 3, 4, 5]
#=> [1, 2, 3, 4, 5]

ia.each_with_index { |val, idx| puts "#{idx+1}. #{val}" }
# 1. 1
# 2. 2
# 3. 3
# 4. 4
# 5. 5
# => [1, 2, 3, 4, 5]
```

**sort:**

```ruby
a = [5, 3, 8, 2, 4, 1]
# => [5, 3, 8, 2, 4, 1]

a.sort
# => [1, 2, 3, 4, 5, 8]
```

**product:**

Returns an array that is a combination of all elements from all arrays.

```ruby
[1, 2, 3].product([4, 5])
# => [[1, 4], [1, 5], [2, 4], [2, 5], [3, 4], [3, 5]]
```

### Convert Array Into String - And Vice Versa

```ruby
letters = %w(a b c d)
letters.join

# "abcd"
```

```ruby
letters = %w(a b c d)
letters.join(" ")

# "a b c d"
```

```ruby
"a b c".split

# ["a", "b", "c"]
```

### Slicing an Array

**take:**

Take the first 3 elements from the array, without changing it:

```ruby
a = [1, 2, 3, 4, 5]
a.take(3)

# => [1, 2, 3]
```

All elements but the first one:

```ruby
a[1..-1]

# => [2, 3, 4, 5]
```

## HASHES

### Creating Hashes

```ruby
my_hash = {
  "a random word" => "ahoy",
  "Dorothy's math test score" => 94,
  "an array" => [1, 2, 3],
  "an empty hash within a hash" => {}
}
```

```ruby
my_hash = Hash.new
my_hash               #=> {}
```

```ruby
hash = { 9 => "nine", :six => 6 }
```

### Accessing Values

```ruby
shoes = {
  "summer" => "sandals",
  "winter" => "boots"
}

shoes["summer"]   #=> "sandals"
shoes["hiking"]   #=> nil
```

Returning `nil` for accessing a value might cause a problem. Method `fetch` will throw an error.

```ruby
shoes.fetch("hiking")   #=> KeyError: key not found: "hiking"
shoes.fetch("hiking", "hiking boots") #=> "hiking boots"

# This method can return a default value instead of raising an error if the given key is not found.
```

### Adding and Changing Data

**Adding Data:**

```ruby
shoes["fall"] = "sneakers"

shoes     #=> {"summer"=>"sandals", "winter"=>"boots", "fall"=>"sneakers"}
```

**Changing Data:**

```ruby
shoes["summer"] = "flip-flops"
shoes     #=> {"summer"=>"flip-flops", "winter"=>"boots", "fall"=>"sneakers"}
```

**Removing Data:**

```ruby
shoes.delete("summer")    #=> "flip-flops"
shoes                     #=> {"winter"=>"boots", "fall"=>"sneakers"}
```

### Methods

```ruby
books = {
  "Infinite Jest" => "David Foster Wallace",
  "Into the Wild" => "Jon Krakauer"
}

books.keys      #=> ["Infinite Jest", "Into the Wild"]
books.values    #=> ["David Foster Wallace", "Jon Krakauer"]
```

**Merging Two Hashes:**

Values from the hash getting merged in (in this case, the values in `hash2`) overwrite the values of the hash getting merged at (`hash1`) when the two hashes have a key that is the same.

```ruby
hash1 = { "a" => 100, "b" => 200 }
hash2 = { "b" => 254, "c" => 300 }
hash1.merge(hash2)      #=> { "a" => 100, "b" => 254, "c" => 300 }
```

### Symbols as Hash Keys

Symbols are predominantly because they are far more performant than strings in Ruby, and they also allow for a much cleaner syntax when defining hashes.

```ruby
# 'Rocket' syntax
american_cars = {
  :chevrolet => "Corvette",
  :ford => "Mustang",
  :dodge => "Ram"
}
# 'Symbols' syntax
japanese_cars = {
  honda: "Accord",
  toyota: "Corolla",
  nissan: "Altima"
}

american_cars[:ford]    #=> "Mustang"
japanese_cars[:honda]   #=> "Accord"
```

### Iterating over Hashes

```ruby
person = {name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown'}

person.each do |key, value|
  puts "Bob's #{key} is #{value}"
end

# Bob's name is bob
# Bob's height is 6 ft
# Bob's weight is 160 lbs
# Bob's hair is brown
```

### Hashes as Optional Parameters

```ruby
def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]}" +
         " years old and I live in #{options[:city]}."
  end
end

greeting("Bob")
# Hi, my name is Bob

greeting("Bob", {age: 62, city: "New York City"})
# Hi, my name is Bob and I'm 62 years old and I live in New York City.
```

Curly braces are not required when a hash is the last argument

```ruby
greeting("Bob", age: 62, city: "New York City")
# Hi, my name is Bob and I'm 62 years old and I live in New York City.
```

### Common Hash Methods

**key?**

```ruby
name_and_age = { "Bob" => 42, "Steve" => 31, "Joe" => 19}
#=> {"Bob"=>42, "Steve"=>31, "Joe"=>19}

name_and_age.key?("Steve")
# => true

name_and_age.key?("Larry")
# => false
```

**select:**

```ruby
name_and_age.select { |k,v| k == "Bob" }
# => {"Bob"=>42}

name_and_age.select { |k,v| (k == "Bob") || (v == 19) }
# => {"Bob"=>42, "Joe"=>19}
```

**to_a:**

```ruby
name_and_age.to_a
# => [["Bob", 42], ["Steve", 31], ["Joe", 19]]

name_and_age
# => {"Bob"=>42, "Steve"=>31, "Joe"=>19}
```

**keys and values:**

```ruby
irb :0011 > name_and_age.keys
# => ["Bob", "Steve", "Joe"]

irb :0012 > name_and_age.values
# => [42, 31, 19]

name_and_age.keys.each { |k| puts k }
# Bob
# Steve
# Joe
```

## METHODS

### Creating a Method

```ruby
def my_name
  "Joe Smith"
end

puts my_name    #=> "Joe Smith"
```

**Parameters and Arguments:**

Parameters are variables that your method will receive when it is called.

The differences are between an argument and a parameter is that a *parameters* act as placeholder variables in the template of your method, whereas *arguments* are the actual variables that get passed to the method when it is called.

```ruby
def greet(name)
  "Hello, " + name + "!"
end

puts greet("John") #=> Hello, John!
```

```ruby
def greet(name = "stranger")       # Default parameter: "stranger"
  "Hello, " + name + "!"
end

puts greet("Jane") #=> Hello, Jane!
puts greet #=> Hello, stranger!
```

### What Methods Return

Ruby offers implicit `return`; both following codes work the same:

```ruby
def my_name
  return "Joe Smith"
end

puts my_name #=> "Joe Smith"
```

```ruby
def my_name
  "Joe Smith"
end

puts my_name #=> "Joe Smith"
```

```ruby
def even_odd(number)
  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end
```

An explicit return can be useful when you want to write a method that checks for input errors before continuing.

```ruby
def even_odd(number)
  unless number.is_a? Numeric
    return "A number was not entered."
  end

  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end

puts even_odd(20) #=>  That is an even number.
puts even_odd("Ruby") #=>  A number was not entered.
```

### Chaining Methods

```ruby
phrase = ["be", "to", "not", "or", "be", "to"]

puts phrase.reverse.join(" ").capitalize
#=> "To be or not to be"
```

### Predicate Methods and Bang Methods

**Predicate Methods** have a question mark at the end of their names. They return Boolean values.

```ruby
puts 5.even?  #=> false
puts 6.even?  #=> true
puts 17.odd?  #=> true

puts 12.between?(10, 15)  #=> true
```

**Bang Methods** have an exclamaton mark at the end of their names. They reassign the value of a variable, mutating it.

```ruby
whisper = "HELLO EVERYBODY"

puts whisper.downcase #=> "hello everybody"
puts whisper #=> "HELLO EVERYBODY

puts whisper.downcase! #=> "hello everybody"
puts whisper #=> "hello everybody"
```

## ENUMERABLES

### select and reject

```ruby
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.select { |friend| friend != 'Brian' }
 #=> ["Sharon", "Leo", "Leila", "Arun"]
 ```

 ```ruby
 friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.reject { |friend| friend == 'Brian' }
 #=> ["Sharon", "Leo", "Leila", "Arun"]
 ```

### each and each_with_index

Return the **original array or hash** regardless of what happens inside the code block

**each:**

 ```ruby
 friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.each { |friend| puts "Hello, " + friend }

#=> Hello, Sharon
#=> Hello, Leo
#=> Hello, Leila
#=> Hello, Brian
#=> Hello, Arun

#=> ["Sharon", "Leo", "Leila", "Brian" "Arun"] // returns original value
```

```ruby
my_array = [1, 2]

my_array.each do |num|
  num *= 2
  puts "The new number is #{num}."
end

#=> The new number is 2.
#=> The new number is 4.

#=> [1, 2]
```

on `hashes`:

```ruby
my_hash = { "one" => 1, "two" => 2 }

my_hash.each { |key, value| puts "#{key} is #{value}" }

one is 1
two is 2
#=> { "one" => 1, "two" => 2}

my_hash.each { |pair| puts "the pair is #{pair}" }

the pair is ["one", 1]
the pair is ["two", 2]
#=> { "one" => 1, "two" => 2}
```

```ruby
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.each { |friend| friend.upcase }

#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun'] // always return original value
```

**each_with_index:**

```ruby
fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.each_with_index { |fruit, index| puts fruit if index.even? }

#=> apple
#=> strawberry
#=> ["apple", "banana", "strawberry", "pineapple"]
```

### map

```ruby
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.map { |friend| friend.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`
```

```ruby
my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']

my_order.map { |item| item.gsub('medium', 'extra large') }
#=> ["extra large Big Mac", "extra large fries", "extra large milkshake"]

# String#gsub(pattern, replacement) returns a copy of self with all occurrences of the given pattern replaced
```

```ruby
salaries = [1200, 1500, 1100, 1800]

salaries.map { |salary| salary - 700 }
#=> [500, 800, 400, 1100]
```

**map.with_._index:**

```ruby
array = %w(a b c)

array.map.with_index { |ch, idx| [ch, idx] }

# [["a", 0], ["b", 1], ["c", 2]]
```

### select or filter

```ruby
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.select { |friend| friend != 'Brian' }

 #=> ["Sharon", "Leo", "Leila", "Arun"]
```

```ruby
responses = { 'Sharon' => 'yes', 'Leo' => 'no', 'Leila' => 'no', 'Arun' => 'yes' }

responses.select { |person, response| response == 'yes'}
#=> {"Sharon"=>"yes", "Arun"=>"yes"}
```

### reduce

The #reduce method reduces an array or hash down to a single object.

```ruby
my_numbers = [5, 6, 7, 8]

my_numbers.reduce { |sum, number| sum + number }
#=> 26
```

- The first block variable in the `#reduce` enumerable (`sum` in this example) is known as the accumulator.
- The result of each iteration is stored in the accumulator and then passed to the next iteration.
- The accumulator is also the value that the `#reduce` method returns at the end.
- By default, the initial value of the accumulator is the first element in the collection.

1. Iteration 0: `sum = 5 + 6 = 11`
2. Iteration 1: `sum = 11 + 7 = 18`
3. Iteration 2: `sum = 18 + 8 = 26`

- We can also set a different initial value for the accumulator by directly passing in a value to the #reduce method

```ruby
my_numbers = [5, 6, 7, 8]

my_numbers.reduce(1000) { |sum, number| sum + number }
#=> 1026
```

```ruby
votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  result
end
#=> {"Bob's Dirty Burger Shack"=>2, "St. Mark's Bistro"=>1}
```

### include?

```ruby
numbers = [5, 6, 7, 8]

numbers.include?(6)
#=> true

numbers.include?(3)
#=> false
```

```ruby
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

invited_list = friends.select { |friend| friend != 'Brian' }

invited_list.include?('Brian')
#=> false
```

### any?

```ruby
numbers = [21, 42, 303, 499, 550, 811]

numbers.any? { |number| number > 500 }
#=> true

numbers.any? { |number| number < 20 }
#=> false
```

### all?

```ruby
fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.all? { |fruit| fruit.length > 3 }
#=> true

fruits.all? { |fruit| fruit.length > 6 }
#=> false
```

### none?

```ruby
fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.none? { |fruit| fruit.length > 10 }
#=> true

fruits.none? { |fruit| fruit.length > 6 }
#=> false
```

### Other methods

**group_by:**

```ruby
names = ["James", "Bob", "Joe", "Mark", "Jim"]

names.group_by{|name| name.length}
# => {5=>["James"], 3=>["Bob", "Joe", "Jim"], 4=>["Mark"]} 
```

**#grep:** returns an array with those items that actualy match the specified criteria (RegEx) (using a `===` match)

```ruby
> names.grep(/J/)
# => ["James", "Joe", "Jim"]
```

## NESTED COLLECTIONS

### Nested Arrays

An array that contains other arrays is called a nested array, or a multidimensional array.

```ruby
test_scores = [
  [97, 76, 79, 93],
  [79, 84, 76, 79],
  [88, 67, 64, 76],
  [94, 55, 67, 81]
]

teacher_mailboxes = [
  ["Adams", "Baker", "Clark", "Davis"],
  ["Jones", "Lewis", "Lopez", "Moore"],
  ["Perez", "Scott", "Smith", "Young"]
]
```

#### Accessing Elements in Nested Arrays

`array[x][y]`, where `x` is the index of the nested element and `y` is the index inside of the nested element

```ruby
teacher_mailboxes[0][0]
#=> "Adams"
teacher_mailboxes[1][0]
#=> "Jones"
teacher_mailboxes[2][0]
#=> "Perez"
```

```ruby
teacher_mailboxes[0][-1]
#=> "Davis"
teacher_mailboxes[-1][0]
#=> "Perez"
teacher_mailboxes[-1][-2]
#=> "Smith"
```

- If you try to access an index of a nonexistent nested element, it will raise an `NoMethodError`, because the `nil` class does not have a `[]` method.
- However, just like a regular array, if you try to access a nonexistent index inside of an existing nested element, it will return `nil`

```ruby
teacher_mailboxes[3][0]
#=> NoMethodError
teacher_mailboxes[0][4]
#=> nil
```

**dig method:**

```ruby
teacher_mailboxes.dig(3, 0)
#=> nil
teacher_mailboxes.dig(0, 4)
#=> nil
```

#### Creating Nested Array

- Create a new array by calling the `Array.new` method with up to 2 optional arguments (initial size and default value), like `Array.new(3, 7)`
- The second optional argument, for the default value, should only be used with an immutable object such as a `number`, `boolean` value, or `symbol`.
- Using a `string`, `array`, `hash`, or other mutable object may result in confusing behavior because each default value in the array will actually be a reference to the same default value.
- Therefore, any change to one of the elements will change all of the elements in the array.

```ruby
mutable = Array.new(3, Array.new(2))
#=> [[nil, nil], [nil, nil], [nil, nil]]
mutable[0][0] = 1000
#=> 1000
mutable
#=> [[1000, nil], [1000, nil], [1000, nil]]
```

- To create an array of mutable objects, you will need to pass the default value for `Array.new` via a block, using curly braces, instead of the second optional argument.
- The code in the block gets evaluated for every slot in the array, creating multiple objects to initialize the array with, rather than references to the same object.

```ruby
immutable = Array.new(3) { Array.new(2) }
#=> [[nil, nil], [nil, nil], [nil, nil]]
immutable[0][0] = 1000
#=> 1000
immutable
#=> [[1000, nil], [nil, nil], [nil, nil]]
```

#### Adding and Removing Elements in Nested Arrays

```ruby
test_scores = [
  [97, 76, 79, 93],
  [79, 84, 76, 79],
  [88, 67, 64, 76],
  [94, 55, 67, 81]
]

test_scores << [100, 99, 98, 97]
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]
test_scores[0].push(100)
#=> [97, 76, 79, 93, 100]
test_scores
#=> [[97, 76, 79, 93, 100], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]
```

```ruby
test_scores.pop
#=> [100, 99, 98, 97]
test_scores[0].pop
#=> 100
test_scores
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]
```

#### Iterating Over Nested Arrays

```ruby
teacher_mailboxes = [
  ["Adams", "Baker", "Clark", "Davis"],
  ["Jones", "Lewis", "Lopez", "Moore"],
  ["Perez", "Scott", "Smith", "Young"]
]

teacher_mailboxes.each_with_index do |row, row_index|
  puts "Row:#{row_index} = #{row}"
end
#=> Row:0 = ["Adams", "Baker", "Clark", "Davis"]
#=> Row:1 = ["Jones", "Lewis", "Lopez", "Moore"]
#=> Row:2 = ["Perez", "Scott", "Smith", "Young"]
#=> [["Adams", "Baker", "Clark", "Davis"], ["Jones", "Lewis", "Lopez", "Moore"], ["Perez", "Scott", "Smith", "Young"]]
```

```ruby
teacher_mailboxes.each_with_index do |row, row_index|
  row.each_with_index do |teacher, column_index|
    puts "Row:#{row_index} Column:#{column_index} = #{teacher}"
  end
end
#=> Row:0 Column:0 = Adams
#=> Row:0 Column:1 = Baker
#=> Row:0 Column:2 = Clark
#=> Row:0 Column:3 = Davis
#=> Row:1 Column:0 = Jones
#=> Row:1 Column:1 = Lewis
#=> Row:1 Column:2 = Lopez
#=> Row:1 Column:3 = Moore
#=> Row:2 Column:0 = Perez
#=> Row:2 Column:1 = Scott
#=> Row:2 Column:2 = Smith
#=> Row:2 Column:3 = Young
#=> [["Adams", "Baker", "Clark", "Davis"], ["Jones", "Lewis", "Lopez", "Moore"], ["Perez", "Scott", "Smith", "Young"]]
```

**flatten:**

```ruby
teacher_mailboxes.flatten.each do |teacher|
  puts "#{teacher} is amazing!"
end
#=> Adams is amazing!
#=> Baker is amazing!
#=> Clark is amazing!
#=> Davis is amazing!
#=> Jones is amazing!
#=> Lewis is amazing!
#=> Lopez is amazing!
#=> Moore is amazing!
#=> Perez is amazing!
#=> Scott is amazing!
#=> Smith is amazing!
#=> Young is amazing!
#=> ["Adams", "Baker", "Clark", "Davis", "Jones", "Lewis", "Lopez", "Moore", "Perez", "Scott", "Smith", "Young"]
```

### Nested Hashes

```ruby
vehicles = {
  alice: {year: 2019, make: "Toyota", model: "Corolla"},
  blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
  caleb: {year: 2020, make: "Honda", model: "Accord"}
}
```

#### Accessing Data in Nested Hashes

```ruby
vehicles[:alice][:year]
#=> 2019
vehicles[:blake][:make]
#=> "Volkswagen"
vehicles[:caleb][:model]
#=> "Accord"
```

```ruby
vehicles[:zoe][:year]
#=> NoMethodError
vehicles.dig(:zoe, :year)
#=> nil
vehicles[:alice][:color]
#=> nil
vehicles.dig(:alice, :color)
#=> nil
```

#### Adding and Removing Data in Nested Hashes

```ruby
vehicles[:dave] = {year: 2021, make: "Ford", model: "Escape"}
#=> {:year=>2021, :make=>"Ford", :model=>"Escape"}
vehicles
#=> {:alice=>{:year=>2019, :make=>"Toyota", :model=>"Corolla"}, :blake=>{:year=>2020, :make=>"Volkswagen", :model=>"Beetle"}, :caleb=>{:year=>2020, :make=>"Honda", :model=>"Accord"}, :dave=>{:year=>2021, :make=>"Ford", :model=>"Escape"}}
```

```ruby
vehicles[:dave][:color] = "red"
#=> "red"
vehicles
#=> {:alice=>{:year=>2019, :make=>"Toyota", :model=>"Corolla"}, :blake=>{:year=>2020, :make=>"Volkswagen", :model=>"Beetle"}, :caleb=>{:year=>2020, :make=>"Honda", :model=>"Accord"}, :dave=>{:year=>2021, :make=>"Ford", :model=>"Escape", :color=>"red"}}
```

```ruby
vehicles.delete(:blake)
#=> {:year=>2020, :make=>"Volkswagen", :model=>"Beetle"}
vehicles
#=> {:alice=>{:year=>2019, :make=>"Toyota", :model=>"Corolla"}, :caleb=>{:year=>2020, :make=>"Honda", :model=>"Accord"}, :dave=>{:year=>2021, :make=>"Ford", :model=>"Escape", :color=>"red"}}
```

```ruby
vehicles[:dave].delete(:color)
#=> "red"
vehicles
#=> {:alice=>{:year=>2019, :make=>"Toyota", :model=>"Corolla"}, :caleb=>{:year=>2020, :make=>"Honda", :model=>"Accord"}, :dave=>{:year=>2021, :make=>"Ford", :model=>"Escape"}}
```

#### Methods for Nested Arrays

```ruby
vehicles.select { |name, data| data[:year] >= 2020 }
#=> {:caleb=>{:year=>2020, :make=>"Honda", :model=>"Accord"}, :dave=>{:year=>2021, :make=>"Ford", :model=>"Escape"}}
```

```ruby
vehicles.collect { |name, data| name if data[:year] >= 2020 }
#=> [nil, :caleb, :dave]

# return 'nil' if statement is false
```

```ruby
vehicles.collect { |name, data| name if data[:year] >= 2020 }.compact
#=> [:caleb, :dave]

# same as above, but compact takes 'nil' away
```

```ruby
vehicles.filter_map { |name, data| name if data[:year] >= 2020 }
#=> [:caleb, :dave]
```

## OBJECT ORIENTED PROGRAMMING

### Classes

```ruby
class Language
  def initialize(name, creator)
    @name = name
    @creator = creator
  end

  def description
    puts "I'm #{@name} and I was created by #{@creator}!"
  end
end

ruby = Language.new("Ruby", "Yukihiro Matsumoto")
python = Language.new("Python", "Guido van Rossum")
javascript = Language.new("JavaScript", "Brendan Eich")

ruby.description
# => I'm Ruby and I was created by Yukihiro Matsumoto!
python.description
# => I'm Python and I was created by Guido van Rossum!
javascript.description
# => I'm JavaScript and I was created by Brendan Eich!
```

- In a Ruby class, an `initialize` method is used to generate new instances of the class.
- It is usually the first method of a class.

```ruby
class Car
  def initialize(make, model) 
    @make = make
    @model = model
  end
end
 
kitt = Car.new("Pontiac", "Trans Am")
# instance kitt of the class Car
```

### Variables and Classes

- **Instance variable** hold a value specific to each instance of that class, not to all members of the class itself. In Ruby, the `@` symbol is used to signify an instance variable, like `@make`
- **Class variables** are like instance variables, but instead of belonging to an instance of a class, they belong to the class itself. Class variables always start with two `@`s, like so: `@@files`.
  - Because there???s only one copy of a class variable shared by all instances of a class, we can for example use a class variable to keep track of the number of instances of that class we???ve created.

```ruby
class Person
  @@people_count = 0
  
  def initialize(name)
    @name = name
    @@people_count += 1
  end
  
  def self.number_of_instances
    @@people_count
  end
end

matz = Person.new("Yukihiro")
dhh = Person.new("David")

puts "Number of Person instances: #{Person.number_of_instances}"
# => Number of Person instances: 2
```

- **Global variables** can be declared in two ways. The first is one that???s already familiar to you: you just define the variable outside of any method or class, and voil??! It???s global. If you want to make a variable global from inside a method or class, just start it with a `$`, like so: `$matz`.

### Class Inheritance

```ruby
class DerivedClass < BaseClass
  # Some stuff!
end
```

```ruby
class Application
  def initialize(name)
    @name = name
  end
end

class MyApp < Application
  # inherits methods from Application class such as #initialize
end
```

**Override:**

```ruby
class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end

class Dragon < Creature
  def fight                  # overrides fight method
    return "Breathes fire!"
  end
end
```

- Keyword `super` access methods from Parent class original method that was overridden in Derived Class

```ruby
class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end

# Add your code below!
class Dragon < Creature
  def fight
    puts "Instead of breathing fire..."
    return super
  end
end
```

Ruby does not allow **multiple inheritance** on Classes.

```ruby
class Creature
  def initialize(name)
    @name = name
  end
end

class Person
  def initialize(name)
    @name = name
  end
end

class Dragon < Creature; end
class Dragon < Person; end

# superclass mismatch for class Dragon
```

- A **class method** provides functionality to a *class itself*, while an **instance method** provides functionality to *one instance of a class*.
- We cannot call an instance method on the class itself, and we cannot directly call a class method on an instance.

```ruby
class Machine
  def Machine.hello
    puts "Hello from the machine!"
  end
end
```

**Private Methods:**

- Ruby allows to explicitly make some methods **public** and others **private**. Public methods allow for an **interface** with the rest of the program; it can now access the `Class`  and it's `instance`s.
- **Private methods** are unreachable. You can only call these methods from other code inside the object -- an *explicit receiver*.

```ruby
class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
  
  public    # This method can be called from outside the class.
  
  def about_me
    puts "I'm #{@name} and I'm #{@age} years old!"
  end
  
  private   # This method can't!
  
  def bank_account_number
    @account_number = 12345
    puts "My bank account number is #{@account_number}."
  end
end

eric = Person.new("Eric", 26)
eric.about_me
# => I'm Eric and I'm 26 years old!

eric.bank_account_number
# private method `bank_account_number' called for #<Context::Person:0x000000015306c8 @name="Eric", @age=26>
```

### Reader and Writer

Ruby needs methods in order to access attributes.

```ruby
class Person
  def initialize(name)
    @name = name
  end
end

jampa = Person.new("Jampa")
jampa.name
# NoMethodError (undefined method `name' for #<Person:0x000055db9955c8f8 @name="Jampa">)
```

```ruby
class Person
  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

jampa = Person.new("Jampa")
jampa.name
# => "Jampa"
jampa.name = "Jumpa"
# NoMethodError (undefined method `name=' for #<Person:0x000055db9955c8f8 @name="Jampa">)
```

We can use attr_reader to access a variable and attr_writer to change it.

```ruby
class Person
  attr_reader :name
  attr_writer :name

  def initialize(name)
    @name = name
  end

end

jampa = Person.new("Jampa")
jampa.name
# => "Jampa"
jampa.name = "Jumpa"
# => "Jumpa"
```

An attribute with a `writer` and a `reader` can be accessed with `attr_accessor`

```ruby
class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end

end

jampa = Person.new("Jampa")
jampa.name
# => "Jampa"
jampa.name = "Jumpa"
# => "Jumpa"
```

### Module

- You can think of a module as a toolbox that contains a set methods and constants.
- Modules as are like classes, but they can???t create instances and can???t have subclasses.
- One of the main purposes of modules is to separate methods and constants into named spaces.

```ruby
module Circle

  PI = 3.141592653589793
  
  def Circle.area(radius)
    PI * radius**2
  end
  
  def Circle.circumference(radius)
    2 * PI * radius
  end
end
```

A class can `include` a module to be able to use its methods.

```ruby
class Angle
include Math
  
  attr_accessor :radians
  
  def initialize(radians)
    @radians = radians
  end
  
  def cosine
    cos(@radians)
  end
end

acute = Angle.new(1)
acute.cosine
```

When a module is used to mix additional behavior and information into a class, it???s called a **mixin**.

```ruby
module Action
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end
end

class Rabbit
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Cricket
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

peter = Rabbit.new("Peter")
jiminy = Cricket.new("Jiminy")

peter.jump
# => I jumped forward 3 feet!
jiminy.jump
# => I jumped forward 5 feet!
```

Whereas `include` mixes a module???s methods in at the *instance* level (allowing instances of a particular class to use the methods), the `extend` keyword mixes a module???s methods at the *class* level.

```ruby
# ThePresent has a .now method that we'll extend to TheHereAnd

module ThePresent
  def now
    puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
  end
end

class TheHereAnd
  extend ThePresent
end

TheHereAnd.now
# => It's 0:52 AM (GMT).
```

## EXCEPTION AND ERROR HANDLING

- **Exception-handling** code to conduct program on how to behave when certain criteria are not met, and errors might crash the program.

### Demosntrating Exceptions

- The `Exception` class handles with errors that might happen during runtime, including syntax errors and typos.

```ruby
a = 10
b = '42'

puts a + b
# => String can't be coerced into Integer (TypeError)

# exited with code=1 in 0.198 seconds
```

- A `begin/rescue` block is typically used on code which we antecipate errors.

```ruby
a = 10
b = '42'

begin
  a + b
rescue
  puts "Could not add the variables a (#{a.class}) and b (#{b.class})."
else
  puts "a + b is #{a + b}."
end

# => Could not add the variables a (Integer) and b (String).

# exited with code=0 in 0.129 seconds
```

- The `puts` statement from the `rescue` clause was exectuted.
- More than that: program did not crash, `exited with code=0`.
- Testing with an array of values:

```ruby
values = [42, 'a', 'r', 9, 5, 10022, 8.7, "sharon", "Libya", "Mars", "12", 98, rand + rand, {:dog=>'cat'}, 100, nil, 200.0000, Object, 680, 3.14, "Steve", 78, "Argo"].shuffle

while values.length > 0
  a = values.pop
  b = values.pop 
  
  begin
    a + b
  rescue
    puts "Could not add variables a (#{a.class}) and b (#{b.class})"
  else
    puts "a + b is #{a + b}"
  end
end

# Could not add variables a (Hash) and b (String)
# Could not add variables a (Class) and b (String)
# Could not add variables a (Integer) and b (NilClass)
# Could not add variables a (Float) and b (String)
# a + b is 81.14
# a + b is Argor
# Could not add variables a (String) and b (Float)
# a + b is 242.0
# a + b is 10031
# a + b is 685
# Could not add variables a (Integer) and b (String)
# Could not add variables a (String) and b (NilClass)

# exited with code=0 in 0.139 seconds
```

- This could be resolved with an `if/else` block, but `begin/rescue` lets programmer handle errors.

```ruby
require 'open-uri'
require 'timeout'

remote_base_url = 'http://en.wikipedia.org/wiki'

start_year = 1900
end_year = 2000

(start_year..end_year).each do |yr|
  begin
    rpage = URI.open("#{remote_base_url}/#{yr}")
  rescue StandardError => e
    puts "Error: #{e}"
  else
    rdata = rpage.read
  ensure
    puts 'sleeping'
    sleep 5
  end

  File.open("copy-of-#{yr}.html", 'w') { |f| f.write(rdata) } if rdata
end
```

- `begin`
  - Starts off the exception-handling block.
  - Operations that have a risk of failing go into this block
- `rescue StandardError => e`
  - This clause includes the code we want to execute in the event if an error or expection.
  - In this particular case, this code will execute if an `StandardError` class occurs.
  - The error will be stored in the variable `e` that will be printed out.
- `else`
  - If no errors are raised, this clause will execute
- `ensure`
  - This clause will be executed, no matter an error/exception was raised or not.

### Flow of Exception Handling

**Using `retry`:**

- The `retry` statement redirects the program back to the begin statement.
- This is helpful if your begin/rescue block is inside a loop and you want to retry the same command and parameters that previously resulted in failure.

```ruby
require 'open-uri'
remote_base_url = "http://en.wikipedia.org/wiki"

[1900, 1910, 'xj3490', 2000].each do |yr|
 
 retries = 3
 
 begin
   url = "#{remote_base_url}/#{yr}"
   puts "Getting page #{url}"
   rpage = open(url)
 rescue StandardError=>e
   puts "\tError: #{e}"
   if retries > 0
       puts "\tTrying #{retries} more times"
       retries -= 1
       sleep 1
       retry
   else
       puts "\t\tCan't get #{yr}, so moving on"
   end    
 else
   puts "\tGot page for #{yr}"
 ensure   
   puts "Ensure branch; sleeping"
   sleep 1

 end
end

# Getting page http://en.wikipedia.org/wiki/1900
#    Got page for 1900
# Ensure branch; sleeping
# Getting page http://en.wikipedia.org/wiki/1910
#    Got page for 1910
# Ensure branch; sleeping
# Getting page http://en.wikipedia.org/wiki/xj3490
#    Error: 403 Forbidden
#    Trying 3 more times
# Getting page http://en.wikipedia.org/wiki/xj3490
#    Error: 403 Forbidden
#    Trying 2 more times
# Getting page http://en.wikipedia.org/wiki/xj3490
#    Error: 403 Forbidden
#    Trying 1 more times
# Getting page http://en.wikipedia.org/wiki/xj3490
#    Error: 403 Forbidden
#       Can't get xj3490, so moving on
# Ensure branch; sleeping
# Getting page http://en.wikipedia.org/wiki/2000
#    Got page for 2000
# Ensure branch; sleeping
```

### Exception and Error Classes

- Not all errors are the same, might be necessary to write specific error handlers.
- Errors in Ruby:
  - Every tyee of error is derived from the `Exception` class
  - If your code rescues a `StandardError`, it will only get errors derived from Standard Error
  - If your code rescues an `Exception`, it will basically handle every possible error that could happen, including all errors of `StandardError` type and its children types.
  - This might be problematic, as `Interrupt` is also a `Exception` class error, and will be rescued when trying to interrupt (Ctrl + C) a program execution.

### Exception Error Tree

```kernel
Exception
    NoMemoryError
    ScriptError
        LoadError
        NotImplementedError
        SyntaxError
    SignalException
        Interrupt
    StandardError
        ArgumentError
        IOError
            EOFError
        IndexError
            StopIteration
        LocalJumpError
        NameError
            NoMethodError
        RangeError
            FloatDomainError
        RegexpError
        RuntimeError
        SecurityError
        SystemCallError
        SystemStackError
        ThreadError
        TypeError
        ZeroDivisionError
    SystemExit
    fatal 
```

## INPUT/OUTPUT

### I/O in Ruby

- Input/Output, generally referred to as **I/O**, is a term that covers the ways that a computer interacts with the world.
  - e.g. screens, keyboards, files, and networks.
- Input is any data that is read by the program, either from a keyboard, file or other programs.
- Output is data that is produced by the program. The output may go to the screen, to a file or to another program.
- Unix-like systems treat all external devices as files inside the `/dev` directory. Example [here](https://docstore.mik.ua/orelly/unix3/mac/appa_01.htm#mosxgeeks-APP-A-TABLE-6).

```bash
$ tree /dev
/dev
????????? disk0
????????? fd
???   ????????? 0
???   ????????? 1
???   ????????? 2
???   ????????? 3 [error opening dir]
????????? null
????????? stderr -> fd/2
????????? stdin -> fd/0
????????? stdout -> fd/1
????????? tty
????????? zero
```

- Files are a long stream of words/characters/bytes being read in from top to bottom.
- I/O streams are located under the `/dev/fd` directory.
- Files there are given a number, (file descriptor).
- The operating system provides three streams by default. They are:
  - Standard input (`/dev/fd/0`) - `stdin`
  - Standard output (`/dev/fd/1`) - `stdout`
  - Standard error (`/dev/fd/2`) - `sdterr`
- `stdin` defaults to reading from the keyboard, `stdout` and `stderr` defaults to writing to the terminal
- `/dev/stdout`, `/dev/stdin`, and `/dev/stderr` are just [symlinks](https://en.wikipedia.org/wiki/Symbolic_link) to the appropriate file descriptor.

### The IO Class

- Ruby `IO` objects wrap Input/Output streams.
- The constants `STDIN`, `STDOUT`, and `STDERR` point to `IO` objects wrapping the standard streams.
  - By default the global variables `$stdin`, `$stdout`, and `$stderr` point to their respective constants.
- While the constants should always point to the default streams, *the globals can be overwritten to point to another I/O stream* such as a file.
- `IO` objects can be written to via puts and print.

```ruby
$stdout.puts 'Hello World'
# same as
puts 'Hello World'
```

- The bare `puts` method is provided by Ruby???s `Kernel` module that is just an alias to `$stdout.puts`.
- IO objects can be read from via `gets`, an alias to `$stdin.gets` provided by `Kernel`.
- `$stdin` is read-only while `$stdout` and `$stderr` are write-only.

```ruby
$stdin.puts 'foo'
# => IOError: not opened for writing
$stdout.gets
# => IOError: not opened for reading
$stderr.gets
# => IOError: not opened for reading
```

- To create a new IO object, we need a file descriptor.

```ruby
# in this case, file descriptor 1 for stdout:
io = IO.new(1)
# => #<IO:fd 1>
io.puts 'hello world'
# hello world
# => nil
```

- To create IOs to other streams:

```ruby
fd = IO.sysopen('/dev/null', 'w+')
# => 8
dev_null = IO.new(fd)
# => #<IO:fd 8>
dev_null.puts 'hello'
# => nil
dev_null.gets
# => nil
dev_null.close
#=> nil

# /dev/null (sometimes referred to as the ???bit bucket??? or ???black hole???) is the null device on Unix-like systems. Writing to it does nothing and attempting to read from it returns nothing (nil in Ruby)

```

- We get a file descriptor for a stream that is read/write to the `dev/null device`.
- We create an IO object for this stream so we can interact with it in Ruby.
- When writing to `dev_null`, the text no longer appears on the screen; when reading from `dev_null`, we get `nil`.

### Position

- When working with an `IO`, we have to keep position in mind. Given that we???ve opened a stream to the following file...

```text
Lorem ipsum
dolor
sit amet...
```

...and we call `gets` on it:

```ruby
IO.sysopen '/Users/joelquenneville/Desktop/lorem.txt'
# => 8
lorem = IO.new(8)
# => #<IO:fd 8>
lorem.gets
# => "Lorem ipsum\n"
```

- It returns the first line of the file and moves the cursor to the next line. If we check the position of the cursor:

```ruby
lorem.pos
#=> 12
```

- If we call `gets` a few more times:

```ruby
lorem.gets
# => "dolor\n"
lorem.gets
# => "sit amet...\n"
lorem.pos
# => 30
```

- We can see Ruby???s ???cursor??? has moved. Now that we have read the whole file, what happens if we try to call gets?

```ruby
lorem.gets
# => nil
lorem.eof?
# => true
```

- We see that it returns `nil`. We can ask a stream if we have reached ???end of file??? via `eof?`. To return to the beginning of the stream, we can call `rewind`.

```ruby
lorem.rewind
# => 0
lorem.pos
# => 0
```

- This can lead to surprises when writing to a stream.

```ruby
fd = IO.sysopen '...somepath/test.txt', 'w+'
# => 8
io = IO.new(fd)
# => #<IO:fd 8>
io.puts 'hello world'
# => nil
io.puts 'goodbye world'
# => nil
```

- This stream has the lines ???hello world??? and ???goodbye world???. If we were to attempt to read:

```ruby
io.gets
# => nil
io.eof?
# => true
```

- Our cursor is currently at the end of the file. In order to read we would need to first rewind.

```ruby
io.rewind
# => 0
io.gets
# => "hello world\n"
```

- Any write operations in the middle of a stream will overwrite the existing data:

```ruby
io.pos
# => 12
io.puts "middle"
# => nil
io.rewind
# => 0
io.read
# => "hello world\nmiddle\n world\n"
```

- This kind of behavior is necessary because streams do not get loaded into memory; only the lines being operated on are loaded.
- This is very useful because some streams can point to very large files that would be expensive to load in memory all at once.
- Streams can also be infinite.
  - `$stdin` has no end; we can always read more data from it (when it receive the message `gets`, it waits for the user to type something).

### Sub-classes and Duck-types

Ruby gives us a couple subclasses of `IO` that are more specialized for a particular type of `IO`:

#### [File](https://ruby-doc.org/core-2.1.2/File.html)

- `File` allows us to read/write files without file descriptors.
- Also adds file-specific convenience methods such as `File#size`, `File#chmod`, and `File.path`.

#### Sockets

- Sockets docs:
  - [Socket](https://ruby-doc.org/stdlib-2.1.2/libdoc/socket/rdoc/Socket.html)
  - [TCPSocket](https://ruby-doc.org/stdlib-2.1.2/libdoc/socket/rdoc/TCPSocket.html)
  - [UDPSocket](https://ruby-doc.org/stdlib-2.1.2/libdoc/socket/rdoc/UDPSocket.html)
  - [UNIXSocket](https://ruby-doc.org/stdlib-2.1.2/libdoc/socket/rdoc/UNIXSocket.html)
- Ruby???s various socket classes inherit all ultimately inherit from `IO`.
- For example, say we have a server running on `localhost:3000`

```ruby
require 'socket'
# => true
socket = TCPSocket.new 'localhost', 3000
# => #<TCPSocket:fd 10>
socket.puts 'GET "/"'
# => nil
socket.gets
#=> "HTTP/1.1 400 Bad Request \r\n"
```

#### [StringIO](https://ruby-doc.org/stdlib-2.1.2/libdoc/stringio/rdoc/StringIO.html)

- `StringIO` allows strings to behave like `IO`s.
- Useful when we want to pass strings into systems that consume streams, like intests where we might inject a `StringIO` instead of reading an actual file.
- Unlike previous classes showcased, `StringIO` does not inherit from `IO`.

```ruby
string_io = StringIO.new('hello world')
# => #<StringIO:0x007feacb0cd4e8>
string_io.gets
# => "hello world"
string_io.puts 'goodby world'
# => nil
string_io.rewind
# => 0
string_io.read
# => "hello worldgoodby world\n"
```

#### [Tempfile](https://ruby-doc.org/stdlib-2.1.2/libdoc/tempfile/rdoc/Tempfile.html)

- `Tempfile` is another class that doesn???t inherit from `IO`; instead, implements `File`???s interface and deals with temporary files.
- As such, it can be passed to any object that consumes `IO`-like objects.

## READING FROM AND WRITING DIRECTLY TO FILES

### Writing to a File

- The File class supplies the basic methods to manipulate files.
- The following script opens a new textfile in "write" mode and then writes "Hello file!" to it:

```ruby
fname = "sample.txt"
somefile = File.open(fname, "w")
somefile.puts "Hello file!"
somefile.close
```

- the first line sets `fname` to just a string that represents the filename, not the actual file itself. This also works:

```ruby
somefile = File.open("sample.txt", "w")
somefile.puts "Hello file!"
somefile.close 
```

- The next line invokes the `File` class method open, which requires us to pass it two arguments:
  1) the filename, represented by a String, and
  2) the read/write mode. As you might guess, `"w"` stands for write.
      - **Warning:** Using `"w"` mode on an existing file will **erase** the contents of that file. If you want to *append* to an existing file, use `"a"` as the second argument.
  3) The `File` class has its own puts method. But this one prints to the file instead of to the screen.
      - You can also use write, which does not include a newline character at the end of the string.
  4) The `close` method finishes the writing process and prevents any further data operations on the file (though you can reopen it again).
- **Block notation:**

```ruby
File.open("sample.txt", "w"){ |somefile| somefile.puts "Hello file!"}
```

- The file handle is automatically closed at the end of the block, so no need to call the close method.

### Reading from a file

- Reading a file uses the same `File.open` method as before. However, the second argument is an `"r"` instead of `"w"`.
- After the file is opened, you can use a variety of methods to read its content. The most obviously-named method is `read`, which grabs all the file's contents:

```ruby
file = File.open("sample.txt", "r")
contents = file.read
puts contents   #=> Lorem ipsum etc.

contents = file.read
puts contents   #=> ""
```

- Every read operation begins where the last read operation ended. In the case where we've read the entire file (by not passing in a number), the second read call has nothing left to read.
- Here's an example of read using the block format

```ruby
contents = File.open("sample.txt", "r"){ |file| file.read }
puts contents
#=>   Lorem ipsum etc.
```

#### `readline` and `readlines`

- When dealing with delimited files, such as comma-delimited text files, it's more convenient to read the file line by line.
- The `readlines` method can draw in all the content and automatically parse it as an array, splitting the file contents by the line breaks.

```ruby
File.open("sample.txt").readlines.each do |line|
   puts line
end
```

- The method `readline` on the other hand, reads a singular line.
- Each read operation moves the file handle forward in the file.
- If you keep calling readline until you hit the end of the file and then call it again, you'll get an "end of file" error.
- The `File` class contains the `eof?` method, which returns true if there is no more data in the file to read.
- The readline method is often used in conjunction with while or unless:

```ruby
file = File.open("sample.txt", 'r')
while !file.eof?
   line = file.readline
   puts line
end
```

- `readlines` load the entire file onto memory, while `readline` only operates on one line at once, which is more efficient.

### Closing files

- If you don't close a file, nothing too bad, usually happen.
- But try writing a large amount of data to a file and have the program finish immediately after the write operation: you might notice that it appears to be incomplete.
  - Re-open it a few seconds later and it should contain what you expect.
- A file's `close` method forces a flush of the pending data, that is, it pushes the data-to-be-written to a file on the hard drive.
- Doing a "flush" is good practice in programming because it frees up memory for the rest of your program and ensures that that file is available for other processes to access.

```ruby
datafile = File.open("sample.txt", "r")
lines = datafile.readlines         
datafile.close

lines.each{ |line| puts line }  
```

- Or, you can pass a block into File.open. At the end of the block, the file is automatically closed:

```ruby
lines = File.open("sample.txt", "r"){ |datafile| 
   datafile.readlines }

lines.each{ |line| puts line }
```

### File existance and properties

#### `File.exists?`

- This is a useful class method that checks whether a file or directory exists and returns true/false:

```ruby
if File.exists?(filename)
   puts "#{filename} exists"
end
```

```ruby
dirname = "data-files"
Dir.mkdir(dirname) unless File.exists?dirname
File.open("#{dirname}/new-file.txt", 'w'){ |f| f.write('Hello world!') }
```

#### `Dir` class

```ruby
#  Dir.glob takes in a directory name and/or a pattern with wildcards and returns an array of filenames

# count the files in my Downloads directory:
puts Dir.glob('Downloads/*').length   #=> 382

# count all files in my Downloads directory and in sub-directories
puts Dir.glob('Downloads/**/*').length   #=> 308858

# list just PDF files, either with .pdf or .PDF extensions:
puts Dir.glob('Downloads/*.{pdf,PDF}').join(",\n")

#=> Downloads/About Downloads.pdf,
#=> Downloads/blueprintcss-1-0-cheatsheet-4-2-gjms.pdf,
#=> Downloads/crafting-rails-applications_b3_0.pdf,
#=> Downloads/DOM166.pdf,
#=> Downloads/html5-cheat-sheet.pdf,
#=> Downloads/la_museum_free_days.pdf,
#=> Downloads/mbapm_rec-a.pdf,
#=> Downloads/mbapm_rec.pdf,
#=> Downloads/metaprogramming-ruby_p2_0.pdf,
#=> Downloads/mining-of-massive-datasets-book.pdf,
#=> Downloads/poignant-guide.pdf,
#=> Downloads/PrinterSchedule.pdf      
```

## FILES AND SERIALIZATION

- Serialization takes a Ruby object and converts it into a string of bytes and vice versa
  - an object representing some data tructure has to be serialized into a set of bytes that can be pushed over a socket to be sent over a network
  - at the other end, the receiver has to unserialize the object, converting it back into something that Ruby (or another language) can understand.
- Lots of ways to serialize, most known are YAML and JSON

### YAML

- YAML is a recursive acronym that stands for *???YAML Ain???t Markup Language???*.
- It is a serialization format, but it is also (easily) human readable, meaning that it can be used as a configuration language.

```YAML
name: "David"
height: 124
age: 28
children:
  "John":
    age: 1
    height: 10
  "Adam":
    age: 2
    height: 20
  "Robert":
    age: 3
    height: 30
traits:
  - smart
  - nice
  - caring
```

- To transform YAML into a Ruby hash:

```ruby
require 'yaml'

YAML.load File.read('test.yaml')

# {"name"=>"David",
#  "height"=>124,
#  "age"=>28,
#  "children"=>{"John"=>{"age"=>1, "height"=>10},
#              "Adam"=>{"age"=>2, "height"=>20},
#              "Robert"=>{"age"=>3, "height"=>30}},
#  "traits"=>["smart", "nice", "caring"]}
```

- In YAML:
  - colons represent ???key-value??? pairings
  - tabs create a new hash.
  - hyphens builds a list rather than a hash.
- This easy translation between YAML and Ruby dictionaries is one of the primary benefits of YAML.

```ruby
require 'yaml'

class Person
  attr_accessor :name, :age, :gender

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  def to_yaml
    YAML.dump ({
      :name => @name,
      :age => @age,
      :gender => @gender
    })
  end

  def self.from_yaml(string)
    data = YAML.load string
    p data
    self.new(data[:name], data[:age], data[:gender])
  end
end

p = Person.new "David", 28, "male"
p p.to_yaml

p = Person.from_yaml(p.to_yaml)
puts "Name #{p.name}"
puts "Age #{p.age}"
puts "Gender #{p.gender}"
```

### JSON

- JSON stands for *Javascript Object Notation*
- its syntax is nearly the same as the syntax for defining Javascript objects

```json
{
  "name": "David",
  "height": 124,
  "age": 28,
  "children": {"John": {"age": 1, "height": 10},
             "Adam": {"age": 2, "height": 20},
             "Robert": {"age": 3, "height": 30}},
  "traits": ["smart", "nice", "caring"]
}
```

```ruby
require 'json'
JSON.load File.read("test.json")

# {"name"=>"David",
#  "height"=>124,
#  "age"=>28,
#  "children"=>{"John"=>{"age"=>1, "height"=>10},
#              "Adam"=>{"age"=>2, "height"=>20},
#              "Robert"=>{"age"=>3, "height"=>30}},
#  "traits"=>["smart", "nice", "caring"]}
```

```ruby
require 'json'

class Person
  ...
  def to_json
    JSON.dump ({
      :name => @name,
      :age => @age,
      :gender => @gender
    })
  end

  def self.from_json(string)
    data = JSON.load string
    self.new(data['name'], data['age'], data['gender'])
  end
  ...
end
```

- Many modern browsers have a Javascript implementation of JSON by default, making it the lingua franca of AJAX communication.
- On the other hand, YAML requires an extra library and simply does not have that much following in the Javascript community.
- If your primary objective for a serialization method is to communicate with Javascript, look at JSON first.

### MessagePack

- With YAML and JSON, how much space a serialized object consumes is not an issue.
- Turns out that small serialized size is a very important characteristic, especially for systems that require low latency and high throughput. This is where MessagePack steps in.
- MessagePack is not meant to be human readable:
  - it is a binary format, which means that it represents its information as arbitrary bytes, not necessarily bytes that represent the alphabet.
  - its serializations often take up significantly less space than their YAML and JSON counterparts.
- Because MessagePack does not come bundled with Ruby, it has to be installed

```bash
gem install msgpack
```

```ruby
require 'msgpack'
msg = {:height => 47, :width => 32, :depth => 16}.to_msgpack
p msg
#=>  "\x83\xA6height/\xA5width \xA5depth\x10"

obj = MessagePack.unpack(msg)
p obj
# => {"height"=>47, "width"=>32, "depth"=>16}
```

```ruby
class Person
  ...
  def to_msgpack
    MessagePack.dump ({
      :name => @name,
      :age => @age,
      :gender => @gender
    })
  end

  def self.from_msgpack(string)
    data = MessagePack.load string
    self.new(data['name'], data['age'], data['gender'])
  end
  ...
end
```

### Modularize with Mixins

- Ruby is a dynamic language with some great metaprogramming features.
- Notice that the `Person` serialization/unserialization methods created earlier are smilar.

```ruby
require 'json'

#mixin
module BasicSerializable

  #should point to a class; change to a different
  #class (e.g. MessagePack, JSON, YAML) to get a different
  #serialization
  @@serializer = JSON

  def serialize
    obj = {}
    instance_variables.map do |var|
      obj[var] = instance_variable_get(var)
    end

    @@serializer.dump obj
  end

  def unserialize(string)
    obj = @@serializer.parse(string)
    obj.keys.each do |key|
      instance_variable_set(key, obj[key])
    end
  end
end
```

- In the `serialize` method:
  - the `@@serializer` class variable is set to the serializing class. This means that we can immediately change our serialization method, as long as our serializable classes include this module.
  - the `serialize` method loops over the `instance_variables` and constructs a Ruby hash of the variable names and their values.
  - Then, simply use the `@@serializer` to dump out the object.
  - If the serializing mechanism does not have a dump method, we can simply subclass it to give it that method
- similar approach with the `unserialize` method:
  - use the serializer to get a Ruby hash out of the string and set the object???s instance variables to the values of the hash.
- This makes our Person class really easy to implement:

```ruby
class Person
include BasicSerializable

  attr_accessor :name, :age, :gender

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end
end
```

```ruby
p = Person.new "David", 28, "male"
p p.serialize
# "{\"@name\":\"David\",\"@age\":28,\"@gender\":\"male\"}"

p.unserialize (p.serialize)
puts "Name #{p.name}"
# Name David
puts "Age #{p.age}"
# Age 28
puts "Gender #{p.gender}"
# Gender male
```

- you might notice that the `BasicSerializable` methods work very well for objects that only have serializable instance variables (i.e. integers, strings, floats, etc. or arrays and hashes of them).
- However, it will fail for an object that has other BasicSerializable objects as instances.
- The easy wasy to fix this problem is to **override** the serialize and unserialize methods in such classes, like so:

```ruby
class People
  include BasicSerializable

  attr_accessor :persons

  def initialize
    @persons = []
  end

  def serialize
    obj = @persons.map do |person|
      person.serialize
    end

    @@serializer.dump obj
  end

  def unserialize(string)
    obj = @@serializer.parse string
    @persons = []
    obj.each do |person_string|
      person = Person.new "", 0, ""
      person.unserialize(person_string)
      @persons << person
    end
  end

  def <<(person)
    @persons << person
  end
end
```
