require 'library'

describe Library do

  it "add a book to library" do
    expect(subject).to respond_to(:add_book).with(1).argument
  end

  it "store book" do
    subject.add_book("Harry Potter and the Philosopher's Stone")
    expect(subject.book_list).to include "Harry Potter and the Philosopher's Stone"
  end

  it "list books" do
    subject.add_book("Harry Potter and the Philosopher's Stone")
    expect{ subject.list_books }.to output { "Harry Potter and the Philosopher's Stone" }.to_stdout
  end

end
