class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :price
      t.string :gen

      t.timestamps
    end
  end
end
