


class Cart

  attr_reader :cart

  def initialize

    @cart = []
    # Not sure what's a better structure - hash vs array

  end


  def add_book(book)
    @cart.push(book)
  end

  def browse(collection)
    collection.sample
  end

end
