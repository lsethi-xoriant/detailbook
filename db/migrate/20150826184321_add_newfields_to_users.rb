class AddNewfieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :business_no, :string
    add_column :users, :industry, :string
  end
end
