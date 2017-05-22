module BooksHelper

  def get_booklist(owner)
    Book.where(owner:owner)
  end

end
