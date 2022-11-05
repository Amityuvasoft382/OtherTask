class AddApproveToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :approve,:boolean, default: false
  end
end
