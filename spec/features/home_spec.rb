RSpec.describe 'Home page', :type => :feature  do

  describe 'Home page' do
    it 'shows home page' do
      visit root_path
      expect(page).to have_content 'This is the home page lalala!'
    end

  end

end