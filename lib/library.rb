class Library
  attr_reader :book_list

  def initialize
    @book_list = []
  end

  def add_book(book)
    @book_list << book
  end

  def list_books
    @book_list.each { |name| puts name }
  end

end
