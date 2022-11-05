class RemoveImageToPost < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :lock_image, :boolean
    add_column :posts, :lock_image,:boolean, default: true

  end
end
