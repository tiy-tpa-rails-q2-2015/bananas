
puts "Hello, whats your name?"

fname = gets.chomp
lname = gets.chomp

puts "Oh, hai: #{fname}. Are you a Mr. or Ms. #{lname}?"

input = ""

loop do
  input += gets
  break if input.size > 10
end

puts "You entered #{input.size} character(s)."
