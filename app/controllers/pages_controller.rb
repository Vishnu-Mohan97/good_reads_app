class PagesController < ApplicationController
  def home

  @books = Book.all 
  end


  def my_books
  end
  def index
  end

  def users
    byebug
    @users = User.all
  end
  def books
    byebug
    @books = Book.all
  end
end 
