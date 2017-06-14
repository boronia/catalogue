class WishlistsController < ApplicationController

  def index
    @wishlists = {}
    Wishlist.all.each do |w|
      books = w.books unless w.books.empty?
      @wishlists[w.owner] = books.map {|b| "#{b.title}, by #{b.author}"} unless books.nil?
    end
    @wishlists
  end

  def add_book
    @book = Book.new(book_permitted_params)
    @book.save
    @wishlist = Wishlist.find_by_owner(params[:owner])
    @wb_entry = WishlistsBooks.new(:wishlist_id => @wishlist.id, :book_id => @book.id)
  end

  private

  def book_permitted_params
    params.require(:book).permit(:owner, :title)
  end
end
