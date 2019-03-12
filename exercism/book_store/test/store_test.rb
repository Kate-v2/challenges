
require './exercism/book_store/test/test_helper'

require './exercism/book_store/lib/book'
require './exercism/book_store/lib/store'

class StoreTest < Minitest::Test

  def test_it_can_create_a_store_with_attributes
    store = Store.new
    assert_instance_of(Store, store)
    assert_equal(store.books, [] )
  end

  def test_it_can_add_Series1_of_books
    store = Store.new
    # -- add --
    store.add_series(5, "Book", 8)
    assert_equal(store.books.count, 5 )
    # -- assess books --
    assert_instance_of(Book, store.books[0])
    assert_equal(store.books[0].cost, 8)
    assert_equal(store.books[0].title, "Book1")
    assert_equal(store.books[1].title, "Book2")
    assert_equal(store.books[2].title, "Book3")
    assert_equal(store.books[3].title, "Book4")
    assert_equal(store.books[4].title, "Book5")
  end

  def test_it_can_add_a_new_book
    store = Store.new
    hash  = { title: "Title", cost: 8 }
    # -- add --
    store.new_book(hash)
    assert_equal(store.books.count, 1 )
    # -- assess book --
    book = store.books.first
    assert_instance_of(Book, book)
    assert_equal(book.title, hash[:title] )
    assert_equal(book.cost,  hash[:cost] )
  end

  def test_it_can_remove_a_book
    store = Store.new
    hash  = { title: "Title", cost: 8 }
    # -- add --
    store.new_book(hash)
    assert_equal(store.books.count, 1 )
    # -- delete --
    store.remove_book(hash[:title])
    assert_equal(store.books.count, 0 )
  end


end
