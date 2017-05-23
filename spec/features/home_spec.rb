require 'rails_helper'

RSpec.describe 'Home page', :type => :feature  do

  describe 'Home page' do
    it 'shows home page' do
      visit root_path
      expect(page).to have_content 'All the books...'
    end

  end

end