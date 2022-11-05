class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :c_name
      t.string :p_name
      t.string :p_type
      t.integer :price
      t.integer :qty
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
