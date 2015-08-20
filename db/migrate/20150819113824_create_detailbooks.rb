class CreateDetailbooks < ActiveRecord::Migration
  def change
    create_table :detailbooks do |t|
      t.string :name
      t.string :lastname
      t.date :birthday
      t.string :city
      t.string :country
      t.string :gender
      t.text :course
      t.text :university
      t.text :graduation
      t.text :skills
      t.text :experience
      t.integer :points, :default => 0 
      t.integer :business
      t.text :link
      t.integer :employees
      t.text :industry
      t.text :applications
      t.integer :phone
      t.timestamps null: false
    end
  end
end
