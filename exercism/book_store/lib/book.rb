

class Book

  attr_reader :title, :cost

  def initialize(hash)
    @title = hash[:title]
    @cost  = hash[:cost]
  end


end
