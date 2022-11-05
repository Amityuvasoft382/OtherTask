class CreateMusics < ActiveRecord::Migration[6.1]
  def change
    create_table :musics do |t|
      t.string :name
      t.string :singers
      t.float :price
      t.date :release_year

      t.timestamps
    end
  end
end
