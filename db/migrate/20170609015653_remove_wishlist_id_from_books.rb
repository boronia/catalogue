class RemoveWishlistIdFromBooks < ActiveRecord::Migration[5.0]
  def up
    remove_reference :books, :wishlist, index: true
  end

  def down
    add_reference :books, :wishlist
  end
end
