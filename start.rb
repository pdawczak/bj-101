# Simple data types
p 34
p 30.99
p "Pawel"
p true
p :example
p nil

# Array
p ["Pawel", "VJ", "Ian"]

# Hash
person = { first_name: "Pawel", last_name: "Dawczak", age: 30 }
p person
p person[:first_name]

address = { line1: "123", line2: "Sample Street", post: "AC123" }
p address[:post]

# Simple variables
age = 34
first_name = "Pawel"

p first_name
p age
p age
age = 20
p age

# Associate variable to value of other varaible
info = person
p info

# "functions"
# 1. define a function
def say_hello
  puts "HELLOOOOO!"
end
def greet(some_person)
  puts "Hello, #{some_person[:first_name]}!"
end
def greet_other(some_person, other_person)
  puts "#{some_person[:first_name]}: Hello, #{other_person[:first_name]}! How are you?"
end

# 2. call the function
say_hello
greet(person)
say_hello
greet(info)

vj = { first_name: "VJ" }
greet_other(person, vj)
greet_other(vj, person)

# Calculator ->
#
#

weekdays = ["mon", "tue", "wed", "thu", "fri"]
p weekdays[3]

weekdays = { 1 => "mon",
             2 => "tue",
             3 => "wed",
             4 => "thu",
             5 => "fri" }
p weekdays[3]
p "========="
p weekdays.find { |key, name| name == "thu" }.first
p "========="

weeknum = { "mon" => 1,
            "tue" => 2,
            "wed" => 3,
            "thu" => 4,
            "fri" => 5 }
p weeknum["wed"]

day_of_interes = "fri"
p weeknum[day_of_interes]

3.times { puts "I love Ruby" }
