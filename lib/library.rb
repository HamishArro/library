require 'book.rb'

class Library
  attr_reader :book_list, :damaged_count

  def initialize
    @book_list = []
  end

  def add_book(book)
    @book_list << book
  end

  def list_books
    @book_list.each { |book| puts book }
  end

  def count_damaged
    @damaged_count = 0
    @book_list.each { |book| @damaged_count += 1 if book.damaged == true }
    @damaged_count
  end

end
