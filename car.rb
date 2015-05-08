class Car
  attr :make, :model
  attr_accessor :color                       # <-------- #
                                                         #
  def initialize(make, model, color)                     #
    @make = make                                         #
    @model = model                                       #
    @color = color                                       #
  end                                                    #
                                                         #
  def designation                                        #
    model + ' ' + make                                   #
  end                                                    #
                                                         #
  # GETTER                                     <-------- #
  def color                                              #
    @color                                               #  `attr_accessor` is
  end                                                    #  shorthand for these
                                                         #  two methods.
  # SETTER                                     <-------- #
  def color=(new_color)                                  #  `attr` is shorthand
    @color = new_color                                   #  for just the getter.
  end                                                    #

my_car = Car.new("VW", "Rabbit", "White")

puts "My #{my_car.designation} is painted #{my_car.color}." # SETTING THE COLOR

my_car.color = "Red"   # USING THE SETTER

puts "My #{my_car.color} #{my_car.model} is faster now."
