require 'rails_helper'

RSpec.describe 'Show Wishlists', :type => :feature  do

  describe 'Show all wishlists' do
    it 'Shows all wishlists for all owners' do
      visit wishlists_path
      expect(page).to have_content 'Wishlists'
    end

  end

end