class Book < ActiveRecord::Base
acts_as_authentic
has_many :user_books
has_many :users , through: :user_books
end

