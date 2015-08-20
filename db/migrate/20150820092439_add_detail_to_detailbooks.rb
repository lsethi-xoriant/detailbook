class AddDetailToDetailbooks < ActiveRecord::Migration
  def change
    add_column :detailbooks, :message, :text
    add_column :detailbooks, :post, :text
    add_column :detailbooks, :video, :text
    add_column :detailbooks, :audio, :text
    add_column :detailbooks, :files, :text
  end
end
