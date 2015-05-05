data = [
  { :name => "Apple",  :taste => "Sweet"  },
  { :name => "Banana", :taste => "Lovely", :color => "Yellow" },
  { :name => "Cactus",  :taste => "Horrible" }
]

data[0]

# plants.each do |plant|
#   puts "#{plant[:name]} tastes so #{plant[:taste]}"
# end

data.each { |datum|
  puts datum[:color]
}
