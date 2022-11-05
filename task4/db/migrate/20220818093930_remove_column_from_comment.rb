class RemoveColumnFromComment < ActiveRecord::Migration[6.1]
  def change
    remove_column :comments, :user, :string
    add_column :comments, :username, :string
  end
end
