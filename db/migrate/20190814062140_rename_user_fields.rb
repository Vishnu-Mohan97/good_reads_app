class RenameUserFields < ActiveRecord::Migration
  def change
  	rename_column :users, :password, :crypted_password
  	rename_column :users, :password_confirm, :password_salt
  end
end
