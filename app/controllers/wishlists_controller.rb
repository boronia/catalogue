class WishlistsController < ApplicationController

  def index
    @wishlists = {}
    Wishlist.all.each do |w|
      books = w.books unless w.books.empty?
      @wishlists[w.owner] = books.map {|b| "#{b.title}, by #{b.author}"} unless books.nil?
    end
    @wishlists
  end
end
