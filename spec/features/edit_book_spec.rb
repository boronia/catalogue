RSpec.describe 'Editing Books', :type => :feature  do

  describe 'Editing books' do
    it 'Updates book details when edited' do
      book = create(:book, title: 'Book1', author: 'Author1', is_series: false)
      visit edit_book_path(book)
      fill_in 'Title', with: 'Book2'
      fill_in 'Author', with: 'Author2'
      click_button 'Update Book'
      expect(page).to have_content 'View Book Details'
      expect(page).to have_content 'Book2'
      expect(page).to have_content 'Author2'
      expect(page).to have_content 'Is is a series? false'
    end
  end

end