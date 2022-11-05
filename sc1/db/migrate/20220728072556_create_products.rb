class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :Pname
      t.integer :price
      t.string :stripe_id
      t.integer :qui

      t.timestamps
    end
  end
end
