class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to root_path
  end

  def edit
  end

  def index
    @book = Book.new
    @books = Book.all
    @user = current_user
  end

  def show
  end

  def destroy
  end

  private
  def book_params
    params.require(:book).permit(:title, :book)
  end
end
