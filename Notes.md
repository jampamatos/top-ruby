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
    - [each and each\_with\_index](#each-and-each_with_index)
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
  - [BLOCKS](#blocks)
    - [`yield`](#yield)
    - [Block control](#block-control)
    - [Lambdas](#lambdas)
    - [Procs](#procs)
    - [Procs vs Lambdas: Differences](#procs-vs-lambdas-differences)
      - [Arguments](#arguments)
      - [Returning](#returning)
    - [Procs vs Lambdas: Similarities](#procs-vs-lambdas-similarities)
      - [Default Arguments](#default-arguments)
      - [Method parameters](#method-parameters)
    - [Capturing blocks](#capturing-blocks)
    - [Examples](#examples)
  - [PATTERN MATCH](#pattern-match)
    - [Patterns](#patterns)
    - [Return values](#return-values)
    - [Object Pattern Match](#object-pattern-match)
    - [Variable Pattern](#variable-pattern)
    - [As Pattern Match](#as-pattern-match)
    - [Alternative Pattern Match](#alternative-pattern-match)
    - [Guard Conditions](#guard-conditions)
    - [Array Pattern Match](#array-pattern-match)
    - [Hash Pattern Matching](#hash-pattern-matching)
    - [Ruby 3 Patterns](#ruby-3-patterns)
      - [Rightward assignment](#rightward-assignment)
      - [Find Pattern](#find-pattern)
  - [ALGORITHMS](#algorithms)
    - [Intro to Algorithms](#intro-to-algorithms)
    - [Queues and Stacks](#queues-and-stacks)
      - [Stacks](#stacks)
      - [Queues](#queues)

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

# Computers can’t store strings in the same efficient way they store numbers. Although the values of the variables are the same, the computer has created two separate string objects in memory
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
  - Because there’s only one copy of a class variable shared by all instances of a class, we can for example use a class variable to keep track of the number of instances of that class we’ve created.

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

- **Global variables** can be declared in two ways. The first is one that’s already familiar to you: you just define the variable outside of any method or class, and voilà! It’s global. If you want to make a variable global from inside a method or class, just start it with a `$`, like so: `$matz`.

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
- Modules as are like classes, but they can’t create instances and can’t have subclasses.
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

When a module is used to mix additional behavior and information into a class, it’s called a **mixin**.

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

Whereas `include` mixes a module’s methods in at the *instance* level (allowing instances of a particular class to use the methods), the `extend` keyword mixes a module’s methods at the *class* level.

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

```bash
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
├── disk0
├── fd
│   ├── 0
│   ├── 1
│   ├── 2
│   └── 3 [error opening dir]
├── null
├── stderr -> fd/2
├── stdin -> fd/0
├── stdout -> fd/1
├── tty
└── zero
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

- The bare `puts` method is provided by Ruby’s `Kernel` module that is just an alias to `$stdout.puts`.
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

# /dev/null (sometimes referred to as the “bit bucket” or “black hole”) is the null device on Unix-like systems. Writing to it does nothing and attempting to read from it returns nothing (nil in Ruby)

```

- We get a file descriptor for a stream that is read/write to the `dev/null device`.
- We create an IO object for this stream so we can interact with it in Ruby.
- When writing to `dev_null`, the text no longer appears on the screen; when reading from `dev_null`, we get `nil`.

### Position

- When working with an `IO`, we have to keep position in mind. Given that we’ve opened a stream to the following file...

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

- We can see Ruby’s “cursor” has moved. Now that we have read the whole file, what happens if we try to call gets?

```ruby
lorem.gets
# => nil
lorem.eof?
# => true
```

- We see that it returns `nil`. We can ask a stream if we have reached “end of file” via `eof?`. To return to the beginning of the stream, we can call `rewind`.

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

- This stream has the lines “hello world” and “goodbye world”. If we were to attempt to read:

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
- Ruby’s various socket classes inherit all ultimately inherit from `IO`.
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

- `Tempfile` is another class that doesn’t inherit from `IO`; instead, implements `File`‘s interface and deals with temporary files.
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

- YAML is a recursive acronym that stands for *“YAML Ain’t Markup Language”*.
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
  - colons represent “key-value” pairings
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
  - use the serializer to get a Ruby hash out of the string and set the object’s instance variables to the values of the hash.
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

## BLOCKS

- A block can be declared as a single-line or multi-line block.
- Ruby convention is to use `{}` for single-line blocks and `do..end` for multi-line blocks.
- Parameters are passed to a block by defining them inside pipes, i.e. `|arg1, arg2|`.

```ruby
# Single-line block
[1,2,3].each { |num| puts num }

# Multi-line block
[1,2,3].each do |num|
  puts num
end
```

### `yield`

- yield is a keyword that can be called inside a method to relinquish execution to the accompanying block.

```ruby
def logger
  yield
end

logger { puts 'hello from the block' }
#=> hello from the block

logger do
  p [1,2,3]
end
#=> [1,2,3]
```

```ruby
def double_vision
  yield
  yield
end

double_vision { puts "How many fingers am I holding up?" }
#=> How many fingers am I holding up?
#=> How many fingers am I holding up?
```

- Arguments passed to `yield` will be passed as parameters to the block.
  - If `yield` is called multiple times, different arguments will be passed.

```ruby
def love_language
  yield('Ruby')
  yield('Rails')
end

love_language { |lang| puts "I love #{lang}" }
#=> I love Ruby.
#=> I love Rails.
```

- Example:
  - We write a method that iterates through a list of transactions, and for each one yields it to a block.
  - The caller of the method can call it with any block they want.
  - This way, they can define how the transactions will be printed.

```ruby
@transactions = [10, -15, 25, 30, -24, -70, 999]

def transaction_statement
  @transactions.each do |transaction|
    yield transaction # You just yield the transaction amount.
  end
end

transaction_statement do |transaction|
  p "%0.2f" % transaction # The caller can define how it is handled.
end
#=> ["10.00", "-15.00", "25.00", "30.00", "-24.00", "-70.00", "999.00"]
```

- Instead we didn’t want the caller to define how the transaction is printed, but just the format:

```ruby
@transactions = [10, -15, 25, 30, -24, -70, 999]

def transaction_statement
  @transactions.each do |transaction|
    p yield transaction # `p` is called within our method now instead of within the block
  end
end

transaction_statement do |transaction|
  "%0.2f" % transaction
end
#=> ["10.00", "-15.00", "25.00", "30.00", "-24.00", "-70.00", "999.00"]
```

- If we want to gather the value returned from the block, we can just assign it to a variable or collect it in a data structure:

```ruby
@transactions = [10, -15, 25, 30, -24, -70, 999]

def transaction_statement
  formatted_transactions = []
  @transactions.each do |transaction|
    formatted_transactions << yield(transaction)
  end

  p formatted_transactions
end

transaction_statement do |transaction|
  "%0.2f" % transaction
end
#=> ["10.00", "-15.00", "25.00", "30.00", "-24.00", "-70.00", "999.00"]
```

- In the above examples, the value that we `yield` to the block in transaction_statement is captured by the block and assigned to the named parameter ; if we don’t pass a value with `yield` and the block expects one, then the argument is assigned `nil`

```ruby
def say_something
  yield # No arguments are passed to yield
end

say_something do |word| # But the block expects one argument to be passed in
  puts "And then I said: #{word}"
end
#=> And then I said:
```

- If you have two parameters but pass 3 arguments, then the last one is not assigned to a parameter and you can’t reference it in the block

```ruby
def mad_libs
  yield('cool', 'beans', 'burrito') # 3 arguments are passed to yield
end

mad_libs do |adjective, noun| # But the block only takes 2 parameters
  puts "I said #{adjective} #{noun}!"
end
#=> I said cool beans!
```

- If you’re working with hashes you might need to yield the key and value, just make sure your block names two parameters

```ruby
def awesome_method
  hash = {a: 'apple', b: 'banana', c: 'cookie'}

  hash.each do |key, value|
    yield key, value
  end
end

awesome_method { |key, value| puts "#{key}: #{value}" }
#=> a: apple
#=> b: banana
#=> c: cookie
```

### Block control

- If `yield` is called without a block, ruby will throw a `LocalJumpError`

```ruby
def simple_method
  yield
end

simple_method
# => `simple_method': no block given (yield) (LocalJumpError)
```

- `block_given?` method can be used as a conditional inside a function to check if a block is passed

```ruby
def maybe_block
  if block_given?
    puts "block party"
  end
  puts "executed regardless"
end

maybe_block
# => executed regardless

maybe_block {} # {} is just an empty block
# => block party
# => executed regardless
```

- `#count` is a method that can be called with or without a block.
  - If called without an argument, it just returns the size of whatever it was called on.
  - When called with an argument, it counts how many times that argument appears in the object it was called on.
  - And with a block, it yields to the block and provides a count of how many times the block returns a truthy response.

### Lambdas

- A `lambda` is a way to write a block and save it to a variable.
- This can be useful if you’re calling different methods but passing in the same block to each of them.
- There are two ways to create a lambda.
  - One is to use the lambda keyword e.g. `lambda { "inside the lambda" }`
  - The other way to declare a lambda is using the “stabby lambda” syntax, `-> {}`
- To call a lambda you just call the `#call` method.

```ruby
my_lambda = lambda { puts "my lambda" }
my_other_lambda = -> { puts "hello from the other side" }

my_lambda.call
# => my lambda
```

- To accept arguments into a lambda:
  - For the stabby lambda syntax `->` then use `()` to name your parameters.
  - For the lambda keyword, then use pipes `||` inside the block.

```ruby
my_name = ->(name) { puts "hello #{name}" }

my_age = lambda { |age| puts "I am #{age} years old" }


my_name.call("tim")
#=> hello tim
my_age.call(78)
#=> I am 78 years old
```

### Procs

- A proc is an object that you can use to store blocks and pass them around like variables, just like a lambda
- There is no special lambda class; a lambda is actually just a type of proc object but with some distinct behaviors.
- You declare a new proc in the same way you instantiate any object in Ruby, using `new`, or you can just use ‘proc’

```ruby
a_proc = Proc.new { puts "this is a proc" }

a_proc.call
#=> this is a proc

b_proc = proc { puts "this is also a proc" }

b_proc.call
#=> this is also a proc
```

- Arguments are declared inside pipes `||`

```ruby
a_proc = Proc.new { |name, age| puts "name: #{name} --- age: #{age}" }

a_proc.call("tim", 80)
#=> name: tim --- age: 80
```

### Procs vs Lambdas: Differences

- There are some key differences between procs and lambdas that can make choosing one over the other more suitable.

#### Arguments

- A proc behaves much like a block with regards to arguments as in it doesn’t care if more or fewer arguments are passed than specified.
- It will also assign `nil` to any parameters that are named but not passed through as arguments.

```ruby
a_proc = Proc.new { |a, b| puts "a: #{a} --- b: #{b}" }

a_proc.call("apple")
# => a: apple --- b:
```

- Now, with the `#select` method:

```ruby
nested_array = [[1, 2], [3, 4], [5, 6]]
nested_array.select {|a, b| a + b > 10 }

# => [5, 6]
```

- `#select` has two arguments specified `|a, b|`
- Each iteration we pass a single element of nested_array into the block:
  - On the first iteration this is: `[1, 2]`, which is now is deconstructed automatically (into `a = 1, b = 2`) and its values compared as specified.
  - So on to the next rounds of iteration in which we pass `[3, 4]` and `[5, 6]` one by one.
  - This happens because the block `{|a, b| if a + b > 10 }` is treated as a **non-lambda proc**.
- This property is not limited to `#select` but also applies to other `enum` methods like `#map`, `#each` etc.
- More about this here on the [documentation](https://ruby-doc.org/core-3.1.2/Proc.html).
- A `lambda`, on the other hand, DOES care and will raise an error if you don’t honor the number of parameters expected.

```ruby
a_proc = lambda { |a, b| puts "a: #{a} --- b: #{b}" }

a_proc.call("apple")
# => wrong number of Arguments (given 1, expected 2) (ArgumentError)

a_proc.call("apple", "banana", "cake")
# => wrong number of Arguments (given 3, expected 2) (ArgumentError)
```

#### Returning

- When you write an explicit return inside a lambda, it returns from the lambda block back to the caller.

```ruby
a_lambda = -> { return 1 }

a_lambda.call
# => 1
```

- A `proc` object, however, returns from the context in which it is called.
- If you are in the top level context (outside of a class or method), then you’ll get an error because you can’t return out of the very top level context, as there is no caller to return to.

```ruby
a_proc = Proc.new { return }

a_proc.call
# => localJumpError (unexpected return)
```

- If you return from a proc inside a method, the method is the context in which it was called and therefore it returns from the method before any of the other code below it is executed.

```ruby
def my_method
  a_proc = Proc.new { return }
  puts "this line will be printed"
  a_proc.call
  puts "this line is never reached"
end

my_method
#=> this line will be printed
```

### Procs vs Lambdas: Similarities

#### Default Arguments

- Both procs and lambdas support default arguments in the same way Ruby methods do:

```ruby
my_proc = Proc.new { |name="bob"| puts name }

my_proc.call
# => bob

my_lambda = ->(name="r2d2") { puts name }

my_lambda.call
# => r2d2
```

#### Method parameters

- Both procs and lambdas can be used as arguments to a method.

```ruby
def my_method(useful_arg)
  useful_arg.call
end

my_lambda = -> { puts "lambda" }
my_proc = Proc.new { puts "proc" }

my_method(my_lambda)
# => lambda

my_method(my_proc)
# => proc
```

### Capturing blocks

- Now that we know how procs and lambdas work, how can this be applied to blocks?
- As we learned, blocks are like little anonymous methods; but what if we want to capture a reference to that block to do something with it?
- Maybe we need to receive the block now in our method and store it in an instance variable to be called later.
- Ruby allows us to capture blocks in a method definition as a special argument using `&`. (if a method names some other parameters, the block-capturing `&` parameter should always go last.)

```ruby
def cool_method(&my_block)
  my_block.call
end

cool_method { puts "cool" }
```

- When `&` is used, Ruby calls a method called `#to_proc` on whatever is assigned to that variable.
- In the example above, using `&` assigns the block to `my_block` and then calls `#to_proc` on it, which creates a proc object. That is why you can use `#call` on it.
- If you put `&` in front of a `Proc` instance in the argument position, that will be interpreted as a block.
- If you combine something other than a `Proc` instance with `&`, then implicit class casting will try to convert that to a `Proc` instance using `to_proc` method defined on that object if there is any.
- In case of a `Symbol` instance, to_proc works in this way:

```ruby
:foo.to_proc # => ->x{x.foo}
```

- For example:

```ruby
bar(&:foo)
# The & operator is combined with :foo, which is not a Proc instance, so implicit class cast applies Symbol#to_proc to it, which gives ->x{x.foo}. The & now applies to this and is interpreted as a block, which gives:

bar { |x| x.foo }

```

```ruby
arr = ["1", "2", "3"]

arr.map(&:to_i)
# => [1, 2, 3]
```

- `#to_proc` is called on the symbol `:to_i`. and returns a proc object which responds to the given method indicated by the symbol.
- So here, `#map` yields each value in the array to the proc object, which calls `#to_i` on it.

- The `&` also works the other way. You can append it to a proc object and it converts it to a block, and passes the block to the method being called.

```ruby
def cool_method
  yield
end

my_proc = Proc.new { puts "proc party" }

cool_method(&my_proc)
# => proc party
```

- If you tried to call `cool_method(my_proc)` without the `&` you’d get an error because the method expected no arguments but you supplied one.
- Similarly, if you have a method that names a parameter and you try to call it with a proc converted to a block, you’ll get an error

```ruby
def cool_method(an_arg)
  an_arg.call
end

a_proc = Proc.new { puts "procodile hunter" }

cool_method(&a_proc) # Converting the proc object to a block

# => ArgumentError (wrong number of arguments (given 0, expected 1))
```

- Using `&` on a proc when calling a method converts it to a block before passing it to the method. It is no longer a named argument to the method.

### Examples

- Timing an execution:

```ruby
def time
  start = Time.now
  yield
  Time.now - start
end

p (time { 'a' * 1000000000 }) # => 0.3582474
```

- Running a block into a function both implicitly and explicitly:

**IMPLICITLY:**

```ruby
students = ['Greyson', 'Logan', 'Steve', 'Tony']

def implicit_method(arr)
  unless block_given?
    puts 'No block given'
    return
  end

  i = 0
  while i < arr.count
    el = arr[i]
    yield el
    i += 1
  end
end

implicit_method(students) { |student| puts student }
```

**EXPLICITLY:**

```ruby
students = ['Greyson', 'Logan', 'Steve', 'Tony']

def explicit_method(arr, &blk)
    unless block_given?
    puts 'No block given'
    return
  end

  i = 0
  while i < arr.count
    el = arr[i]
    blk.call(el)
    i += 1
  end
end

explicit_method(students) { |student| puts student }
```

*The `yield` method is a little faster but the explicit block is more readable.*

- Pass a variable stored proc as argument in a function.

```ruby
def explicit_method(arr, &blk)
    unless block_given?
    puts 'No block given'
    return
  end

  i = 0
  while i < arr.count
    el = arr[i]
    blk.call(el)
    i += 1
  end
end

print_proc = Proc.new { |student| puts student }

explicit_method(students, &print_proc)
```

- Currying:
  - Technique to create specialized functions from existing functions.

```ruby
add = lambda { |a, b| a + b }
add.call(100,200)
# => 300

increment = add.curry.call(1)
increment.call(100)
#=> 101
```

## PATTERN MATCH

- Pattern matching is a feature allowing deep matching of structured values: checking the structure and binding the matched parts to local variables.
- Pattern matching in Ruby is implemented with the `case/in` expression:

```ruby
case <expression>
in <pattern1>
  ...
in <pattern2>
  ...
in <pattern3>
  ...
else
  ...
end
```

- Or with the `=>` operator and the `in` operator, which can be used in a standalone expression:

```ruby
<expression> => <pattern>

<expression> in <pattern>
```

- Pattern matching uses specified patterns to match against some data.
  - If the data conforms to the pattern there is a match and the data is deconstructed accordingly.
  - If there is no match either you can supply a default value to return or else a `NoMatchingPatternError` is raised.
- The basic format for a pattern match is a `case` statement.
  - This is not too different from the case statement you will already be familiar with for matching conditions in Ruby, except now instead of `when` we use `in`.
  - If your use case is very basic, you will find there is no difference between using either in or when as the below example illustrates.

```ruby
grade = 'C'

case grade
when 'A' then puts 'Amazing effort'
when 'B' then puts 'Good work'
when 'C' then puts 'Well done'
when 'D' then puts 'Room for improvement'
else puts 'See me'
end

# => Well done
```

```ruby
grade = 'C'

case grade
in 'A' then puts 'Amazing effort'
in 'B' then puts 'Good work'
in 'C' then puts 'Well done'
in 'D' then puts 'Room for improvement'
else puts 'See me'
end

# => Well done
```

- The second format is for pattern match is a one line syntax using the hash rocket.

```ruby
login = { username: 'hornby', password: 'iliketrains' }

login => { username: username }

puts "Logged in with username #{username}"

#=> Logged in with username hornby
```

- Note that we can use the hash rocket => to match against some kind of structure.
- The `case/in` format is best used when there are multiple conditionals you could possibly match against and you need to check against all of them.
- The hash rocket syntax is best used when the data structure you are matching against is known, such as the login data example we used above.

### Patterns

- There are multiple ways of potentially matching against an input. Patterns can be
  - Any Ruby object which is matched using `===.` The Object Pattern.
  - A variable capture / Variable Pattern
  - An As Pattern
  - An Alternative Pattern
  - A Guard Condition
  - An Array Pattern
  - A Hash Pattern
- You can use the above patterns while also having the following experimental additions
  - Rightward Assignment
  - A Find Pattern
- Patterns can also be matched using many of the patterns above together.
  - e.g. an array inside a hash we could use the hash and array patterns.

### Return values

- There are two possible return values from a pattern match statement.
  - The first is `true` which is returned whenever there is a match, even when the match is the else clause in a statement.
  - The second possible return value is a `NoMatchingPatternError` whenever no match can be found.
- The point of a pattern match usually is to not only match against a pattern but also bind all or part of the match to one or more variables that you can then use outside of the pattern match expression.

### Object Pattern Match

- Any object can be used in a pattern match; it is matched using `===` to compare the two objects.
- This pattern is usually used within other patterns such as the array pattern.
- Because of this we can also check against data types

```ruby
input = 3

case input
in String then puts 'input was of type String'
in Integer then puts 'input was of type Integer'
end

#=> input was of type Integer
```

- It’s important to note here that Ruby places the pattern to match on the left of the comparison in `===`; if it didn’t then there would be no match.
  - `3 === Integer` is false whereas `Integer === 3 is true`.
- That is because of how Ruby implements the `===` method on Integer vs on instances of Integer.
  - On an Integer, `===` will check that the operand on the right of the comparison is of type Integer.
  - On an **instance** of an integer `===` will check they hold the same value. `3 === 3 is true`.
- With Ruby pattern matching you can match against the following literal types
  - Booleans
  - nil
  - Numbers
  - Strings
  - Symbols
  - Arrays
  - Hashes
  - Ranges
  - Regular Expressions
  - Procs

### Variable Pattern

- The variable pattern binds a variable or variables to the values that match the pattern.

```ruby
age = 15

case age
in a
  puts a
end

# => 15
```

- the variable pattern always binds the value to the variable so be careful if there is another variable with the same name in the outer scope which you’ll need.

```ruby
a = 5

case 1
in a
  a
end

puts a
#=> 1
```

- What happened above was a **variable assignment pattern match** and not a comparison of the value held in the initial `a` variable against the value `1` from the case statement.
- To avoid this Ruby provides the pin operator `^` which instead then matches against a variable of that name.

```ruby
a = 5

case 1
in ^a
  :no_match
end

#=> NoMatchingPatternError
```

### As Pattern Match

- The as pattern is similar to the variable pattern but can be used to manage more complex assignments.

```ruby
case 3
in 3 => a
  puts a
end

# => 3
```

- It uses the hash rocket in the same way the one line pattern match does.

### Alternative Pattern Match

```ruby
case 0
in 0 | 1 | 2
  puts :match
end

# => match
```

### Guard Conditions

```ruby
some_other_value = true

case 0
in 0 if some_other_value
  puts :match
end

# => match
```

### Array Pattern Match

- Matching against arrays can be done in a few different ways. At its most basic you can match against the exact elements in the array.

```ruby
arr = [1 ,2]

case arr
in [1, 2] then puts :match
in [3, 4] then puts :no_match
end

# => match
```

- That works using the `===` operator from the object pattern match so would work using `case/when`.

```ruby
arr = [1, 2]

case arr
in [Integer, Integer]
  puts :match
in [String, String]
  puts :no_match
end

# => match
```

- Here we’ve matched against the type of the arrays elements, this is an example of Ruby matching against a pattern rather than the actual values in the array.

```ruby
arr = [1, 2, 3]

case arr
in [Integer, Integer]
  puts :no_match
end

# => [1, 2, 3] (NoMatchingPatternError)
```

- Ruby throws an error if we try to match arrays with different number of elements.
- To match against part of an array, use the splat operator `*`

```ruby
arr = [1, 2, 3]

case arr
in [Integer, Integer, *]
  puts :match
end

# => match
```

```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

case arr
in [Integer, Integer, *, Integer, Integer]
  puts :match
end

# => match
```

- Here we are checking only the first and last two elements are Integers.
- You can also mix and match between checking actual values and types

```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

case arr
in [Integer, Integer, *, 9, 10]
  puts :match
end

# => match
```

- If you want to scoop up the values of the array matched against the splat you can use the variable pattern.

```ruby
arr = [1, 2, 3, 4]

case arr
in [1, 2, *tail]
  p tail
end

# => [3, 4]
```

- If you don’t care about some values in the array and are happy to match against any value for that index you can use `_`

```ruby
arr = [1, 2, 3, 4]

case arr
in [_, _, 3, 4]
  puts :match
end

# => match
```

- Let’s say you want to match against an array of two numbers, but only if they aren’t the same number. You can use a guard clause

```ruby
arr = [1, 2]
case arr
in [a, b] unless a == b
  puts :match
end

# => match
```

- You can even match against nested arrays

```ruby
arr = [1, 2, [3, 4]]

case arr
in [_, _, [3, 4]]
  puts :match
end

# => match
```

- You can incorporate the variable pattern to bind matching values to variables to use later

```ruby
arr = [1, 2, 3, 4, 5]

case arr
in [1, 2, 3, a, b]
  puts a
  puts b
end

# => 4
# => 5
```

- Let’s say you have a nested array and you want to match against both the nested array, and some individual parts of it. This is where the as pattern can be used.

```ruby
case [1, 2, 3, [4, 5]]
in [1, 2, 3, [4, a] => arr]
  puts a
  p arr
end

# => 5
# => [4, 5]
```

### Hash Pattern Matching

- Pattern Matching with Hashes works in a similar way to arrays with a couple of important differences.
  - The first is that pattern matching only works for symbol keys, not string keys.
  - The second important difference is that unlike with arrays, you can match against parts of a Hash without having to handle the fact there may be additional `key;value` pairs.
- We can match against the actual values of a hash

```ruby
case { a: 'apple', b: 'banana' }
in { a: 'aardvark', b: 'bat' }
  puts :no_match
in { a: 'apple', b: 'banana' }
  puts :match
end

# => match
```

- We can match against a hash and assign values to variables

```ruby
case { a: 'apple', b: 'banana' }
in { a: a, b: b }
  puts a
  puts b
end

# => apple
# => banana
```

- Because of ruby syntactic sugar for hashes we could rewrite the above as below; note how we don’t have to provide names for the variables.
  - This isn’t pattern matching behaviour but normal Ruby hash behaviour.

```ruby
case { a: 'apple', b: 'banana' }
in { a:, b: }
  puts a
  puts b
end

# => apple
# => banana
```

- You can use the double splat ** to scoop up multiple key;value pairs

```ruby
case { a: 'ant', b: 'ball', c: 'cat' }
in { a: 'ant', **rest }
  p rest
end

# => { :b => "ball", :c => "cat" }
```

- Something to be mindful of with hashes is that because a hash will match with only a subset of keys matching, you need to guard against situations where you don’t want that behaviour

```ruby
case { a: 'ant', b: 'ball' }
in { a: 'ant' }
  'this will match'
in { a: 'ant', b: 'ball' }
  'this will never be reached'
end
```

- If you want to ensure you only match exactly you can use `**nil`

```ruby
case { a: 'ant', b: 'ball' }
in { a: 'ant', **nil }
  puts :no_match
in { a: 'ant', b: 'ball' }
  puts :match
end

# => match
```

- We can use the as pattern to assign the entire hash match to a variable.

```ruby
case { a: 'ant', b: 'ball' }
in { a: 'ant' } => hash
  p hash
end

#=> { :a => 'ant', :b => 'ball' }
```

### Ruby 3 Patterns

#### Rightward assignment

- Usually with Ruby you place variables on the left of an expression that binds a value to that variable.
- With rightward assignment you deconstruct an object and assign values to variables on the right of the expression.
- Instead of using `=` to assign you use a hash rocket `=>`.

```ruby
login = { username: 'hornby', password: 'iliketrains' }

login => { username: username }

puts "Logged in with username #{username}"

#=> "Logged in with username hornby"
```

- The `case/in` format is best used when there are multiple conditionals you could possibly match against and you need to check against all of them.
- The hash rocket syntax is best used when the data structure you are matching against is known, such as the login data example we used above.

#### Find Pattern

- As we saw earlier we can match against only part of a hash, but not an array using the array pattern match because the as pattern would capture all of the array and the variable pattern captures individual parts of it.
- To address this Ruby added the find pattern.
- It works by placing a `*` either side of the part you want to match.
- Can even use the variable pattern to give each `*` a variable name to reference later.

```ruby
case [1, 2, 3]
in [*pre, 1, 2, 3, *post]
  p pre
  p post
end

# => []
# => []
```

- Because everything was match between the pattern our pre and post variables were assigned empty arrays. Let’s see what happens when they aren’t.

```ruby
case [1, 2, 3, 4, 5]
in [*pre, 2, 3, *post]
  p pre
  p post
end

# => [1]
# => [4, 5]
```

```ruby
case [1, 2, "a", 4, "b", "c", 7, 8, 9]
in [*pre, String => x, String => z, *post]
  p pre
  p x
  p z
  p post
end

# => [1, 2, "a", 4]
# => "b"
# => "c"
# => [7, 8, 9]
```

- Let's say you have an array of hashes or json data, and you might need to locate a record from that data and you need to match that data on a few hash keys.
- Let’s say you get a name, age and job title as parameters and, if that person exists, you need to return their first language, otherwise nil:

```ruby
data = [
  {name: 'James', age: 50, first_language: 'english', job_title: 'general manager'},
  {name: 'Jill', age: 32, first_language: 'italian', job_title: 'leet coder'},
  {name: 'Helen', age: 24, first_language: 'dutch', job_title: 'biscuit quality control'},
  {name: 'Bob', age: 64, first_language: 'english', job_title: 'table tennis king'},
  {name: 'Betty', age: 55, first_language: 'spanish', job_title: 'pie maker'},
]

name = 'Jill'
age = 32
job_title = 'leet coder'

case data
in [*, { name: ^name, age: ^age, first_language: first_language, job_title: ^job_title }, *]
else
  first_language = nil
end

puts first_language

# => italian
```

- With pattern matching we do need to consider the case if there is no match, without the `else` clause we’d get the no matching pattern error; but that is exactly what the `else` clause is for in the case statement.
- We get a couple of benefits from doing it this way:
  - Firstly we can bind the `first_language` value to a variable right there in the pattern.
  - Secondly, it is beneficial in the case statement to see exactly what kind of data structure we are trying to match against.
  - This can be useful when getting to grips with code where the data may come from a third party api.

**More on [Ruby Reference](https://rubyreferences.github.io/rubyref/language/pattern-matching.html)**.

## ALGORITHMS

### Intro to Algorithms

- An algorithm is a set os steps fos a computer program to accomplish a task
- A good algorithm:
  - Solve a problem
  - Does so efficiently
- Algorithimic efficiency is measured by **Asymptotic Analysis**, which allows them to be compared independently of a particular programming language or hardware

### Queues and Stacks

#### Stacks

- Stacks have a *Top* and a *Bottom*
- Elements are sorted by insertion order
- Last element in first out (**LIFO**)
- Elements have no index; we can't access them from the middle of the stack
- Can only add to stack (`push`) and remove from stack (`pop`) from the top
- Useful in context in which you want to reverse the order of elements
  - UNDO BUTTON: activities are stored in a stack order, when you press Undo, the activity undone is the last one performed.

#### Queues

- Queues gave a *Front* and a *Back*
- Elements also sorted by insertion order
- First element in first out (**FIFO**)
- Elements also have no index
- Can only add to queue in the back (`queue`) and remove from the front (`unqueue`)
- Useful in context in which we are managing resources
  - PRINT QUEUE: jobs to the same printer -- the first sending will be the first printed.
