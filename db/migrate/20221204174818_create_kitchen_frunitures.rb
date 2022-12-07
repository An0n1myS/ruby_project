class CreateKitchenFrunitures < ActiveRecord::Migration[7.0]
  def change
    create_table :kitchen_frunitures do |t|
      t.string :name
      t.string :title
      t.text :content
      t.text :price

      t.timestamps
    end
  end
end
