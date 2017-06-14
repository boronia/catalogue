class BooksController < ApplicationController

  def index
    @owners = Book.pluck(:owner).uniq
  end


  def new

  end

  def create
    @book = Book.new(book_permitted_params)
    @book.save
    redirect_to @book
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])

    if @book.update(book_permitted_params)
      redirect_to @book
    else
      render 'edit'
    end
  end

  private

  def book_permitted_params
    params.require(:book).permit(:title, :author, :is_series, :current_volume)
  end

end
