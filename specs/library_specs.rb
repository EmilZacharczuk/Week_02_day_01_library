require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class TestLibrary < MiniTest::Test

  def setup
    @library = Library.new([{
    title: "lord_of_the_rings",
    rental_details: {
     student_name: "Jeff",
     date: "01/12/16"
    }
  }])
  end

  def test_books
    @book = [{
    title: "lord_of_the_rings",
    rental_details: {
     student_name: "Jeff",
     date: "01/12/16"
    }
  }]
    assert_equal([{
    title: "lord_of_the_rings",
    rental_details: {
     student_name: "Jeff",
     date: "01/12/16"
    }
  }], @book)
  end

  def test_returning_book_by_title
    assert_equal({
    title: "lord_of_the_rings",
    rental_details: {
     student_name: "Jeff",
     date: "01/12/16"
    }
  }, @library.returning_book_by_title("lord_of_the_rings"))
  end

  def test_returning_book_renting_details_by_title
    assert_equal({student_name: "Jeff", date: "01/12/16"}, @library.returning_book_renting_details_by_title("lord_of_the_rings"))
  end
end
