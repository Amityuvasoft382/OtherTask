class AddColumnToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :color, :string
    add_column :cars, :car_type, :string
    add_column :cars, :ecofriendly, :string
  end
end
