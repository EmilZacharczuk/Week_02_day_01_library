class Library


  attr_accessor :book

  def initialize(book)
    @book = book
  end

  def books
    return @book
  end

  def returning_book_by_title(title)
    for book in @book
      if book[:title] == title
        return book
      end
    end
  end

  def returning_book_renting_details_by_title(title)
    for book in @book
      if book[:title] == title
        return book[:rental_details]
      end
    end
  end
end
