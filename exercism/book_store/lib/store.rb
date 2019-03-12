

require './exercism/book_store/lib/book'


class Store

  attr_reader :books

  def initialize
    @books = []
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

end
