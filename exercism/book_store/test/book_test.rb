
require './test_helper'

require './exercism/book_store/lib/book'

class BookTest < Minitest::Test

  def test_it_can_create_a_book_with_attributes
    hash = { title: 'Title1', cost: 8 }
    book = Book.new(hash)

    assert_instance_of(Book, book)
    assert_equal(book.title, hash[:title])
    assert_equal(book.cost,  hash[:cost])
  end


end
