class AddTitleToPicture < ActiveRecord::Migration
  def change
    add_column :pictures, :title, :string
    add_column :pictures, :description, :string
    add_column :pictures, :like, :integer
  end
end
