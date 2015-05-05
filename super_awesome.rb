# puts "awesome".upcase
hash = { :super => "rad" }

puts hash[:super]
puts hash.fetch(:super)

empty_hash = {}
puts empty_hash.empty?
puts hash.empty?

## RANGES

range = 1..5

range.each do |i|
  puts i * 2
end

array = range.to_a

array.each do |i|
  puts i * 2
end

# Because ENUMERABLE (that we'll talk about later this week!)

# reciever.message(args)

class String

  # monkey patch
  def awesome
    puts "#{self} is Awesome!"
  end
end

"Everything".awesome

