class BooksController < ApplicationController
  def index
  end

  def show
  end

  def new
    @book = Book.new
  end
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user
    @book.save
    redirect_to book_path(current_user)
  end
  
  def edit
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body,)
  end
end
