class ManyToManyBooksWishlists < ActiveRecord::Migration[5.0]
  def change
    create_table :wishlists_books, id: false do |t|
      t.belongs_to :wishlist, index: true
      t.belongs_to :book, index: true
    end
  end

end
