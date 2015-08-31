class CreateJobApplications < ActiveRecord::Migration
  def change
    create_table :job_applications do |t|
      t.string :company_name
      t.string :industry
    	t.string :job_title
    	t.string :experience
    	t.string :job_function
      t.string :employment_type
      t.text :job_description
      t.string :city
      t.string :country
      t.boolean :public
      t.timestamps null: false
    end
  end
end
