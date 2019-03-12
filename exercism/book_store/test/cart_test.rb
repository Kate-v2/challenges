
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


end
