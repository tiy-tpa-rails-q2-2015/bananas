# falsey = `false`, `nil`
# truthy = pretty much everything else!

if true
  puts "The truth is truthy"
else
  puts "The truth us falsey" # IMPOSSIBRU
end

if nil
  puts "nil is truthy" # IMPOSSIBRU
else
  puts "nil is falsey"
end

if 0
  puts "0 is truthy"
else
  puts "0 is falsey"
end

####

tasty = false

if tasty
  puts "Yum!"
else
  puts "Blech!"
end

# Operators
#    Unary = 1
#    Binary = 2
#    Ternary = 3

puts tasty ? "Yum!" : "Blech!" # => Let's avoid using these for now.

tasty ? (puts "Yum!") : (puts "Blech!")  # => Less Clear, can get much worse

####


# Look familiar?

numbers = [1, 2, 3, 4, 7]

numbers.each do |n|
  x = n * 2
  puts x
end

begin
  puts "The value of x is #{x}"
rescue Exception => e
  puts e.message
end

puts "---"

# Other ways to loop

for n in numbers # Don't use this, just use .each
  x = n * 2      # This should be in your style guide.
  puts x
end

puts "The value of x is #{x}" # The X leaks out of the for loop

def foo(a, b)
  puts a + b
rescue => e
  # YOU CAN DO ANYTHING IN HERE
  puts "I'm in your method, saving you from: #{e.class}"
end

# BEGIN, RESCUE BLOCK

begin
  foo(1)
  puts NOPE
rescue NameError, ArgumentError => foo
  # YOU CAN FLY LIKE A BUTTERFLY
  puts "I saved the day, and the program will keep running: #{foo.class}"
end

foo(1, "2")


##### LOOPS #####

x = 0

loop do
  x += 1
  puts "Hi, #{x}"

  if x > 10
    break
  end
end

puts "----"

x = 0
until x >= 12         # UNTIL condition is true
  x += 1
  puts "Hi, #{x}"
end

puts "x is now #{x}"

puts "+++++"

begin         # WHILE condition is true
  x += 1
  puts "Hey, #{x}... You're a teenager now."
end while (x > 12 && x < 19)

puts "x is now #{x}"

