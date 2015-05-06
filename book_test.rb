$LOAD_PATH.unshift File.dirname(__FILE__)
require 'minitest/autorun'
require 'minitest/pride'
require 'book'

class BookTest < Minitest::Test

  def setup
    @harry = Book.new("Harry Potter",
      "I AM A WIZZARD!",
      Book::PAPER_BACK)

    @ender = Book.new("Ender's Game",
      "Bean is just a minor character in this book.")
  end

  def test_that_testing_works
    assert_equal "Harry Potter", @harry.title
  end

  def test_that_a_book_can_be_read
    assert_match /WIZZARD/, @harry.read
  end

  def test_book_has_type
    assert_equal Book::PAPER_BACK, @harry.type
  end

  def test_book_is_a_hardcover
    assert_equal Book::HARD_COVER, @ender.type
  end

  def test_book_is_a_hardcover_by_default
    assert_equal Book::HARD_COVER, Book.new("A", "B").type
  end

  def test_can_change_the_title_of_a_book
    new_title = "Ender's Shadow"
    @ender.title = new_title

    assert_equal new_title, @ender.title
  end

  def test_cannot_change_the_type_of_a_book
    assert_raises NoMethodError do
      @ender.type = Book::PAPER_BACK
    end
    assert_equal Book::HARD_COVER, @ender.type
  end
end
