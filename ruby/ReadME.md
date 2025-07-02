# 🧠 Learning Ruby: A Beginner’s Guide to the Basics

Hey there! 👋

I’ve recently started learning Ruby, and I thought, what better way to reinforce what I learn than by writing it down and sharing it with others? So this post is my beginner-friendly walkthrough of the basics of Ruby — from installation to writing simple code.

Whether you're just getting started or just curious about Ruby, I hope this helps you (and me) learn together. Let’s dive in!

---

## 💡 What Is Ruby?

Ruby is 

* a dynamic, open-source programming language focused on simplicity and productivity.

* ```High-level```, meaning reading and writing Ruby is really easy—it looks a lot like regular English!

* ```Interpreted```, meaning you don’t need a compiler to write and run Ruby.

* ```Object-oriented```, meaning it allows users to manipulate data structures called objects in order to build and execute programs. Everything in Ruby is an object.

* ```Easy to use``` Ruby was designed by Yukihiro Matsumoto (often just called “Matz”) in 1995. Matz set out to design a language that emphasized human needs over those of the computer, which is why Ruby is so easy to pick up.

Ruby is the language behind the popular web framework **Ruby on Rails**, but it’s also great for general scripting and automating tasks.

---

## 🛠️ Setting Up Ruby

Before we start coding, let’s get Ruby running on your machine.

### Install Ruby

On macOS (with Homebrew):

```bash
brew install rbenv ruby-build
eval "$(rbenv init -)"
source ~/.zshrc
rbenv install 3.2.2   # Replace with desired version
rbenv global 3.2.2
gem install rails -v 7.1.2   # Replace with desired version
```

### Using IRB (Interactive Ruby)

You can open up Ruby’s interactive shell by typing:

```bash
irb
```

Now try this:

```ruby
puts "Hello, world!"
```

🎉 Boom — your first Ruby program!

---

## ✏️ Basic Syntax & Data Types

Let’s go over some simple building blocks.

### Variables and Types

```ruby
name = "Alice"      # String
age = 25            # Integer
height = 5.7        # Float
is_student = true   # Boolean
```

Variables are always written in snake case. A variable can reference different objects over its lifetime. For example, my_first_variable can be defined and redefined many times using the = operator:

```ruby
my_first_variable = 1
my_first_variable = "Some string"
my_first_variable = SomeComplexObject.new
```

Constants, however, are meant to be assigned once. They must start with capital letters and are normally written in block capitals with words separated by underscores. For example:

```ruby
MY_FIRST_CONSTANT = 10
# Redefining not allowed
# MY_FIRST_CONSTANT = "Some String"
```

### Comments

```ruby
# This is a single-line comment

=begin
This is a
multi-line comment
=end
```

---

## 🔁 Control Flow

### If / Else

```ruby
if age >= 18
  puts "You’re an adult"
else
  puts "You’re a minor"
end
```

### Unless

```ruby
unless is_student
  puts "Not a student"
end
```

### Case Statement

```ruby
grade = "B"

case grade
when "A"
  puts "Excellent"
when "B"
  puts "Good job"
else
  puts "Keep going"
end
```

---

## 🔄 Loops

### Times Loop

```ruby
5.times do |i|
  puts "Loop ##{i}"
end
```

### While Loop

```ruby
x = 1
while x <= 3
  puts x
  x += 1
end
```

---

## 🧰 Methods

```ruby
def greet(name)
  "Hello, #{name}!"
end

puts greet("Ruby")  # Hello, Ruby!
```

You can pass default arguments too:

```ruby
def greet(name = "world")
  "Hello, #{name}!"
end

puts greet           # Hello, world!
```

A method can be defined with positional arguments, keyword arguments (which are defined and called using the : syntax) or have no arguments at all.

Methods either implicitly return the result of the last evaluated statement, or can explicitly return an object via the return keyword.

```ruby
class Calculator

  # Positional arguments
  def add(num1, num2)
    return num1 + num2 # Explicit return
  end

  # Keyword arguments
  def multiply(num1:, num2:)
    num1 * num2 # Implicit return
  end
end

calc = Calculator.new
calc.add(1, 3)
calc.multiply(num1: 2, num2: 5)
```

---

## 📦 Arrays and Hashes

### Arrays

```ruby
fruits = ["apple", "banana", "cherry"]

puts fruits[0]       # apple

fruits.each do |fruit|
  puts fruit
end
```

### Hashes

```ruby
person = { name: "John", age: 30 }

puts person[:name]   # John

person.each do |key, value|
  puts "#{key}: #{value}"
end
```

---

## ✅ Wrapping Up

This feels like just the beginning. Next up, I’ll be diving into object-oriented programming — including classes, modules, and will share learnings in next part.

If you're learning Ruby too, I’d love to hear from you! Let’s keep growing together. 🚀

---

## 📚 Resources That Helped Me

* [Ruby Official Documentation](https://ruby-lang.org/en/documentation/)
* [Ruby in Twenty Minutes](https://www.ruby-lang.org/en/documentation/quickstart/)
* [The Odin Project: Ruby](https://www.theodinproject.com/paths/full-stack-ruby-on-rails)

---

**Thanks for reading! 🙌**
Feel free to follow me for more posts as I continue learning Ruby and exploring programming.