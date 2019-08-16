class UserBooksController < ApplicationController

def new
@user_book = UserBook.new
end

def create
    byebug
    @user_book = UserBook.create(:user_id => params[:user_id],:book_id => params[:book_id])
      flash[:success] = "Book Created"
      redirect_to pages_books_path
end

def destroy
	
	 UserBook.find(params[:id]).destroy
	flash[:success] = "Book Removed"
	redirect_to pages_books_path
end
def index
	end

end
