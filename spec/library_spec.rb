require 'library'

describe Library do

  it "should add a book to library" do
    expect(subject).to respond_to(:add_book).with(1).argument
  end

end
