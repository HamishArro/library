class Book
attr_reader :title, :author, :damaged

  def initialize(title, author, damaged = false)
    @title = title
    @author = author
    @damaged = damaged
  end

  def is_damaged
    @damaged = true
  end

end
