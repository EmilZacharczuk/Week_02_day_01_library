class Library


  attr_accessor :book

  def initialize(book)
    @book = book
  end

  def books
    return @book
  end
end
