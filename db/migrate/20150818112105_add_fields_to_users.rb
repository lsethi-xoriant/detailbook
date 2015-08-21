class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :university, :string
    add_column :users, :sex, :string
    add_column :users, :date_of_birth, :datetime
    add_column :users, :country, :string
    add_column :users, :city, :string
    add_column :users, :ucas_code, :string
    add_column :users, :address1, :string
    add_column :users, :address2, :string
    add_column :users, :address3, :string
    add_column :users, :post_code, :integer
    add_column :users, :vat, :string
    add_column :users, :number_of_employees, :integer
  end
end
