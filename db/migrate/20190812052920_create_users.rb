class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :password_confirm
      t.string :persistance_token
      t.boolean :admin

      t.timestamps
      
     
    end
  end
end
