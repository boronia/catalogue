class AddWishlistIdToBooks < ActiveRecord::Migration[5.0]
  def up
    add_reference :books, :wishlist, index: true
  end

  def down
    remove_reference :books, :wishlist
  end
end
