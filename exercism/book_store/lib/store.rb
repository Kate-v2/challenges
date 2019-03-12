

require './exercism/book_store/lib/book'


class Store

  attr_reader :books

  def initialize
    @books = []
    # NOTE - this is not an inventory manager.
    # There will be one instance of each book
    # AND this will be utilized in determining discounts
  end

  def add_series(qty, title, cost)
    qty.times { |n| new_book( { title: "#{title}#{n+1}", cost: cost } ) }
  end


  def new_book( hash )
    book = Book.new(hash)
    @books.push(book)
    return book
  end

  def remove_book(title)
    @books.delete_if { |b| b.title == title }
  end

  def discounts
    @_discounts = {
      dis1: 0.00,
      dis2: 0.05,
      dis3: 0.10,
      dis4: 0.20,
      dis5: 0.25,
    }
  end

  def promo(term)
    value  = discounts[term]
    adjust = (1 - value).round(2)
  end

end
