class AddLinkToUsers < ActiveRecord::Migration
  def change
    add_column :users, :job_applications, :string
    add_column :users, :website_link, :string
    add_column :users, :second_email, :string
    add_column :users, :phone_no, :integer
  end
end
