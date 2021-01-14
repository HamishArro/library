require 'book'

describe Book do

  let(:book) {Book.new("Harry Potter and the Philosopher's Stone", "J. K. Rowling")}

  it "should have a title" do
    expect(book.title).to eq "Harry Potter and the Philosopher's Stone"
  end

  it "should have an author" do
    expect(book.author).to eq "J. K. Rowling"
  end

  describe "#damaged" do

    it "should not be damaged after first init" do
      expect(book.damaged).to eq false
    end

    it "should be able to be reported as damaged" do
      book.is_damaged
      expect(book.damaged).to eq true
    end

  end

end
