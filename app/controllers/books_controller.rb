class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
    @user = User.find(current_user.id)
    @users = User.all
  end

  def create
    @book = Book.new(book_params)
    @user = User.find(current_user.id)
    @book.user_id = current_user.id
    if @book.save
      redirect_to book_path(@book.id), notice: "You have created book successfully."
    else
      @books = Book.all
      @users = User.all
      render :index
    end
  end

  def show
    @book = Book.find(params[:id])
    @user = User.find(@book.user_id)
    @book_comment = BookComment.new
  end

  def edit
    @book = Book.find(params[:id])
    if  current_user.id != @book.user_id
      redirect_to books_path
    else
    end
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to book_path(@book.id), notice: "You have updated book successfully."
    else
      render :edit
    end
  end

  def destroy
   @book = Book.find(params[:id])
   @book.destroy
   redirect_to books_path
  end

  private
    def book_params
      params.require(:book).permit(:title, :body, :user_id)
    end

    # def user_params
    #   params.require(:user).permit(:name)
    # end

end
