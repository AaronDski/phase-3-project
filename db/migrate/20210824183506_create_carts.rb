class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.string :item_name
      t.string :make
      t.string :model
      t.integer :year
      t.float :price
      t.belongs_to :user
      t.belongs_to :part
    end
  end
end
