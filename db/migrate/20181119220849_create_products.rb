class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title, null: false #not nullable
      t.text :description
      t.decimal :price, null: false, precision: 15, scale: 2 #width of range to allow for price and not nullable

      t.timestamps
    end
  end
end
