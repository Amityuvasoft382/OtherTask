class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  mount_uploader :image, ImageUploader
  validates :title ,  presence: true
  validates :detail ,  presence: true
  #validates :image, file_size: { less_than: 20.megabytes }

end
