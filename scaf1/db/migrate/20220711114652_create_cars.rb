class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :m_name
      t.string :c_name
      t.integer :speed
      t.string :c_type
      t.string :color
      t.string :ecofriendly

      t.timestamps
    end
  end
end
