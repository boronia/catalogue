class MigrateWishlistIds < ActiveRecord::Migration[5.0]
  def up
    puts 'Migrating wishlist ids from books to wishlists_books..'
    count = Book.count(:wishlist_id)
    puts "No. of records with wishlist_id in books: #{count}"
    records = Book.where('wishlist_id is not null')
    records.each do |r|
      w_id = r.wishlist_id
      b_id = r.id
      puts "Creating record wishlist id: #{w_id}, book id: #{b_id}.."
      WishlistsBooks.where(:wishlist_id => w_id, :book_id => b_id).first_or_create!
      puts '..saved!'
    end
  end

  def down
    puts 'Inserting back wishlist ids into books from wishlist_books..'
    count = WishlistsBooks.count
    puts "No. of records in wishlist_books: #{count}"
    records = WishlistsBooks.all
    records.each do |r|
      w_id = r.wishlist_id
      b_id = r.book_id
      puts "Add wishlist_id to book: #{w_id}, book_id: #{b_id}.."
      book = Book.find_by_id(b_id)
      book.update!(:wishlist_id => w_id) unless book.nil?
      puts '..saved!'
    end
  end
end
