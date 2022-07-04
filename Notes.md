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
