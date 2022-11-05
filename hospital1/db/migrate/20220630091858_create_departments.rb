class CreateDepartments < ActiveRecord::Migration[6.1]
  def change
    create_table :departments do |t|
      t.time :clock_in
      t.time :clock_out
      t.date :date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
