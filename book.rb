module Lendable
  def lend
    @count = @count - 1 unless @count == 0
  end
end

class Book
  include Lendable
  attr_reader :title, :author
  attr_writer :finished
  attr_accessor :count

  def initialize(title, author)
    @title = title
    @author = author
    @finished = false
    @count = 3
  end

  def self.recommended_books
    [
      Book.new("The Well-Grounded Rubyist", "David A. Black"),
      Book.new("Practical Object-Oriented Design in Ruby", "Sandi Metz"),
      Book.new("Effective Testing with RSpec 3", "Myron Marston"),
    ]
  end
end
