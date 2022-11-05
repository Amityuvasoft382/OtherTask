class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :p_name
      t.string :c_name
      t.string :price
      t.string :order
      t.string :p_type

      t.timestamps
    end
  end
end
