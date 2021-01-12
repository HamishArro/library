class Book
attr_reader :name, :author, :damaged

  def initialize(name, author, damaged = false)
    @name = name
    @author = author
    @damaged = damaged
  end

  def is_damaged
    @damaged = true
  end

end
