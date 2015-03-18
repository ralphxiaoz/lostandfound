class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.string :string
      t.string :description
      t.string :string

      t.timestamps null: false
    end
  end
end
