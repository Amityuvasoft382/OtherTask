class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  before_save :set_user

  def set_user
    @user = User.find_by(id:self.user_id)
    # debugger
    self.username = @user.username.to_s
  end
   # accepts_nested_attributes_for :user, :allow_destroy => :true
end
