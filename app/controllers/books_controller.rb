class BooksController < ApplicationController
def new
	@book = Book.new
end
def destroy
    Book.find(params[:id]).destroy
    flash[:success] = "Book Deleted"
    redirect_to pages_books_path
  end
  def create
    @book = Book.create(book_params)
    
      flash[:success] = "Book Created"
      redirect_to pages_books_path
    
  end
def index
    @users = Post.paginate(:page => params[:page], :per_page => 5)

	@book = Book.all.find(params[:id])
end



private
byebug
def book_params
  byebug
    params.require(:book).permit(:title, :author, :summary)
  end
end