class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :p_name
      t.string :c_name
      
      t.integer :s_price
      t.integer :qui
      t.string :p_type
      t.date :date_of_purchase
      
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
