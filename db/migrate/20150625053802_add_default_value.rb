class AddDefaultValue < ActiveRecord::Migration
  def change
      change_column :pictures, :like, :integer, :default => 0
  end
end
