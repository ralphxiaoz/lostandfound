class MinorFix < ActiveRecord::Migration
  def change
    remove_column :categories, :string, :string
    remove_column :items, :category, :string
  end
end
