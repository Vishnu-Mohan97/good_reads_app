class User < ActiveRecord::Base
has_many :user_books
has_many :books , through: :user_books
acts_as_authentic do |c|
  c.crypto_provider = Authlogic::CryptoProviders::Sha512
end

end
class User
  self.per_page = 10
end

# set per_page globally
WillPaginate.per_page = 10
