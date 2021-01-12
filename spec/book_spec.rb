require 'book'

describe Book do

  it "should have a name" do
    book = Book.new("Harry Potter and the Philosopher's Stone", "J. K. Rowling")
    expect(book.name).to eq "Harry Potter and the Philosopher's Stone"
  end

  it "should have an author" do
    book = Book.new("Harry Potter and the Philosopher's Stone", "J. K. Rowling")
    expect(book.author).to eq "J. K. Rowling"
  end

  it "should not be damaged after first init" do
    book = Book.new("Harry Potter and the Philosopher's Stone", "J. K. Rowling")
    expect(book.damaged).to eq false
  end

  it "should be able to be reported as damaged" do
    subject.is_damaged
    expect(subject.damaged).to eq true
  end

end
