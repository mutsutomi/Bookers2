class BooksController < ApplicationController
  def index
    @book = Book.new
    @user = User.find(current_user.id)
  end

  def new
    @book =book.new
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to book_path(@book.id)
  end

  def show
    @book = Book.find(params[:id])
  end

  private
    def book_params
      params.require(:book).permit(:title, :body, :user_id)
    end

end
