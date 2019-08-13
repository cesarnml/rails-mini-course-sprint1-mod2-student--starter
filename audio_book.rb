require_relative 'book'
class AudioBook < Book
  def listen
    @finished = true
  end
end