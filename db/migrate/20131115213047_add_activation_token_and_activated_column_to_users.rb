class AddActivationTokenAndActivatedColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :activated, :boolean
    add_column :users, :activation_token, :string

    change_column :users, :activated, :boolean, :null => false
    change_column :users, :activation_token, :string, :null => false
  end
end
