class RenameType < ActiveRecord::Migration
  def change
    rename_column :items, :type, :category
  end
end
