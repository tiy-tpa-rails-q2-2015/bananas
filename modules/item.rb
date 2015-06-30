require 'active_support'

# Make things that have `display_*` printable.
module Displayable
  extend ActiveSupport::Concern

  included do
    class << self
      attr_accessor :displayable_attrs

      def attr_displayable(*attrs)
        @displayable_attrs = attrs
      end
    end
  end

  def display
    columns = []
    self.class.displayable_attrs.each do |attr|
      columns << send("display_#{attr}").ljust(18)
    end
    puts '| ' + columns.join(' | ') + ' |'
  end
end

# $$$
class Product
  include Displayable

  attr_displayable :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def display_name
    @name
  end

  def display_price
    "$#{@price} each"
  end
end

# An hourly service
class Service
  include Displayable

  attr_displayable :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def display_name
    @name
  end

  def display_price
    "$#{@price}/hr."
  end
end

# An edible
class Fruit
  include Displayable

  attr_displayable :name, :color

  def initialize(name, color)
    @name = name
    @color = color
  end

  def display_name
    @name
  end

  def display_color
    @color
  end
end

# A Readable
class Book
  include Displayable

  attr_reader :title, :author
  attr_displayable :title, :author

  alias_method :display_title, :title
  alias_method :display_author, :author

  def initialize(title, author)
    @title = title
    @author = author
  end
end

items = []
items << Product.new('Sponge', 1.25)
items << Product.new('Soap', 0.75)
items << Service.new('House Cleaning', 35)
items << Fruit.new('Apple', 'Red')
items << Book.new("Ender's Game", 'Orson Scott Card')

items.each(&:display)
