class Book

  def initialize(new_title, text)
    @title = new_title
    @text = text
  end

  def print_title
    puts @title
  end

  def read
    puts @text
  end

  class Wine

    def initialize(title, vintage)
      @title = title
      @vintage = vintage
    end

    def drink
      puts "This #{@title} from #{@vintage} is lovely."
    end
  end
end

class AudioBook < Book

  def read
    super
    %x(say '#{@text}')
  end
end

atotc = Book.new("A Tale of Two Cities", "It was the best of times, it was the worst times...")
atotc.print_title
atotc.read

harry_potter = Book.new("Harry Potter and the Sorcerer's Stone", "Lol, harry.")
harry_potter.print_title
harry_potter.read

road = AudioBook.new("The Road", "My name is Cormmick McCartney, and I ride a Motorcycle, and apparently eat people.")
road.print_title
road.read

# wine = Book::Wine.new("Merlot", 1965)
# wine.drink
