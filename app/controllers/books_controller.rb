class BooksController < ApplicationController
def new
	@book = Book.new
end
def index
	@books = Book.all
end
def show
	@book = Book.all.find(params[:id])
end

def add_to_user
    @book = Book.all.find(params[:id])
	@user_book.create(:user_id=>current_user.id ,:book_id=>@book.id)
end
end