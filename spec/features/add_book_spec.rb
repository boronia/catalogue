require 'rails_helper'

RSpec.describe 'Adding Books', :type => :feature  do

  describe 'Adding books' do
    it 'Adds a book with title and author only' do
      visit new_book_path
      fill_in 'Title', with: 'Magician'
      fill_in 'Author', with: 'Raymond E. Feist'
      click_button 'Save Book'
      expect(page).to have_content 'View Book Details'
      expect(page).to have_content 'Magician'
      expect(page).to have_content 'Raymond E. Feist'
      expect(page).to have_content 'Is is a series? true'
    end

  end

end