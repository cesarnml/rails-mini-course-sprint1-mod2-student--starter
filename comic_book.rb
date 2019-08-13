require_relative 'book'

class ComicBook < Book
  def read
    @finished = true
  end
end