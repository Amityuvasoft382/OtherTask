class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :price
      t.string :rp_id

      t.timestamps
    end
  end
end
