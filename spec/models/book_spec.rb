require 'rails_helper'

RSpec.describe Book, type: :model do

  describe 'Check Book Factory' do
    let(:title) { 'Pride and Prejudice' }
    let(:author) { 'Jane Austen' }
    let(:resource) { build :book, title: title, author: author }

    it 'sets the right default attributes' do
      book = build(:book)
      expect(book.title).to eq('My Book')
      expect(book.author).to eq('John Doe')
      expect(book.is_series?).to eq(false)
      expect(book.category).to eq('Fiction')
    end

    it 'overrides attributes correctly' do
      expect(resource.title).to eq(title)
      expect(resource.author).to eq(author)
      expect(resource.is_series?).to eq(false)
      expect(resource.category).to eq('Fiction')
      expect(resource.owner).to eq('Sara')
    end

  end
end