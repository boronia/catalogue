class Wishlist < ApplicationRecord
  has_and_belongs_to_many :books, join_table: 'wishlists_books'
end
