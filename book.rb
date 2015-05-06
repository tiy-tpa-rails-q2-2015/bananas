
class Book
  PAPER_BACK = :pb
  HARD_COVER = :hc

  attr_accessor :title # Read and Write
  attr :type           # Read only

  def initialize(title, text, type = HARD_COVER)
    @title = title
    @text = text
    @type = type
  end

  def read
    @text
  end
end
