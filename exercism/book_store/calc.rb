# This is the runner file for the Book Store Challenge

require 'pry'

require './exercism/book_store/lib/store'
require './exercism/book_store/lib/cart'

# --------------

# Welcome to Bookz
bookz = Store.new
bookz.add_series(5, "Stuff", 8)

display = bookz.books

# Hello
person = Cart.new
person.add_book( person.browse(display) )
person.add_book( person.browse(display) )
person.add_book( person.browse(display) )
person.add_book( person.browse(display) )
person.add_book( person.browse(display) )
person.add_book( person.browse(display) )

binding.pry
