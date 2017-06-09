class Book < ApplicationRecord
  has_and_belongs_to_many :wishlists, join_table: 'wishlists_books'
end
