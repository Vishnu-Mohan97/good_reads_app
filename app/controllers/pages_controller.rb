class PagesController < ApplicationController
  def home
  	byebug
  @books = Book.all 
  end


  def my_books
  @books = current_user.books.all
  end


  def admin
  end
end
