require 'library'

describe Library do

  let(:book) {Book.new("Harry Potter and the Philosopher's Stone", "J. K. Rowling")}

  it "add a book to library" do
    expect(subject).to respond_to(:add_book).with(1).argument
  end

  it "store book" do
    subject.add_book(book)
    expect(subject.book_list).to include book
  end

  it "list books by title" do
    subject.add_book(book)
    expect{ subject.list_books }.to output { book.title }.to_stdout
  end

  it "returns amount of damaged books" do
    book.is_damaged
    subject.add_book(book)
    expect(subject.count_damaged).to eq 1
  end

  it "returns specific a author's titles" do
    subject.add_book(book)
    expect { subject.list_author(book.author) }.to output { book.title }.to_stdout
  end

end
