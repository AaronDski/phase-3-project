class CreateParts < ActiveRecord::Migration[6.1]
  def change
    create_table :parts do |t|
      t.string :item_name
      t.string :make
      t.string :model
      t.integer :year
      t.float :price
    end
  end
end
