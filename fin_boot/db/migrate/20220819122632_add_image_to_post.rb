class AddImageToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :image, :string
    add_column :posts, :approve,:boolean, default:false
    add_column :posts, :lock_image,:boolean, default:true
  end
end
