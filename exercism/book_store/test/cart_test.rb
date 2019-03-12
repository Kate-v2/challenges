
require './exercism/book_store/test/test_helper'

require './exercism/book_store/lib/book'
require './exercism/book_store/lib/cart'

class CartTest < Minitest::Test

  def setup
    @hash = { title: 'Title1', cost: 8 }
    @book = Book.new(@hash)
  end


  def test_it_can_create_a_cart_with_attributes
    cart = Cart.new
    assert_instance_of(Cart, cart)
    assert_equal(cart.cart.class,  Array)
    assert_equal(cart.cart.empty?, true)
  end

  def test_it_can_add_a_book
    cart = Cart.new
    cart.add_book(@book)
    assert_equal(cart.cart.count, 1)
    assert_equal(cart.cart.first.class, Book)
  end

  def test_it_can_browse_a_collection_of_books_and_return_a_single_book
    cart = Cart.new
    # -- collection of books --
    hash2 = { title: 'Title2', cost: 8 }
    hash3 = { title: 'Title3', cost: 8 }
    collection = [@book, Book.new(hash2), Book.new(hash3)]
    assert_equal(collection.count, 3)
    # -- selecting a book --
    book = cart.browse(collection)
    assert_instance_of(Book, book)
  end

end
