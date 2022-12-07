class CreateFurnitures < ActiveRecord::Migration[7.0]
  def change
    create_table :furnitures do |t|
      t.string :name
      t.string :title
      t.text :content
      t.string :price

      t.timestamps
    end
  end
end
