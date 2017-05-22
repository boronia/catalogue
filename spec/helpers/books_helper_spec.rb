require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the BooksHelper. For example:
#
# describe BooksHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe BooksHelper, type: :helper do

  describe 'get booklist' do
    it 'retrieves all books for a particular owner' do
      book1 = create(:book, title: 'Book1', author:'Author1', owner:'Sheryl Lee')
      book2 = create(:book, title: 'Book2', author: 'Author2', owner:'Jenny Manning')
      book3 = create(:book, title: 'Book3', author: 'Author3', owner:'Sheryl Lee')
      book_list = [book1, book3]
      expect(helper.get_booklist('Sheryl Lee')).to eq(book_list)
      expect(helper.get_booklist('Jenny Manning')).to eq([book2])
    end
  end
end
