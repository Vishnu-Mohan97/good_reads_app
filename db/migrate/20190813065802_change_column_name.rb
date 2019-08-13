class ChangeColumnName < ActiveRecord::Migration
  def change
  rename_column :users, :persistance_token, :persistence_token

  end

end
