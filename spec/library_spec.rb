require 'library'

describe Library do

  it "should add a book to library" do
    expect(subject).to respond_to(:add_book).with(1).argument
  end

  it "should store book" do
    subject.add_book("Harry Potter and the Philosopher's Stone")
    expect(subject.book_list).to include "Harry Potter and the Philosopher's Stone"
  end

end
