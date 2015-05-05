movies = [
  { :name => "Aeon Flux" },
  { :name => "Batman" },
  { :name => "Captain America" }
]

movies.each do |movie|
  puts "#{movie[:name]} was a fantastical film."
end

# ---

name = "Alice"

# Concatenation

"Hello, " + name + "!"

# Interpolation

"Hello, #{name}!"

# ---

hello = "Hello"

Hello = "Hello"

"FooBar" # => Camel Case

"fooBar" # => variation of Camel Case

"foo_bar" # => Snake Case


["foo", "bar"]

# foo = "foo"
# bar = "bar"

[foo, bar] # => undefined `foo`.


  h = { :foo => "foo", :bar => "BAR" }

  h[:foo] # -> "foo"

# Array of Hashes

data = [
  { :name => "Apple",  :taste => "Sweet"  },
  { :name => "Banana", :taste => "Lovely", :color => "Yellow" },
  { :name => "Cactus",  :taste => "Horrible" }
]

apple = data[0]  # => { :name => "Apple",  :taste => "Sweet"  }
apple[:name]     # => "Apple"

# Hash of Hashes (nested hashes)

fruit = {
  :apple => { :name => "Apple",  :taste => "Sweet"  },
  :banana => { :name => "Banana", :taste => "Lovely", :color => "Yellow" },
  :cactus => { :name => "Cactus",  :taste => "Horrible" },
  0 => { :zero => "cool" }, # THIS IS A WEIRD THING TO DO: fruit[0]
  "string" => "value"       # DEMONSTRATION PURPOSES ONLY
}

fruit[:apple][:taste]



