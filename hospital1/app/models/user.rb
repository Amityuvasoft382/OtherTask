class User < ApplicationRecord
  rolify
   attr_accessor :remove_image
   has_one_attached :image, dependent: :destroy

  has_many :departments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :username, presence: true, uniqueness: true
  validates :unique_id, presence: true, uniqueness: true
 after_create :assign_default_role
  
  def assign_default_role
    self.add_role(:doctor) if self.roles.blank?
  end
  ####
  ####


  attr_writer :login

  def login
    @login || self.username || self.email
  end

  def self.find_for_database_authentication(warden_conditions)
      conditions = warden_conditions.dup
      if (login = conditions.delete(:login))
        where(conditions.to_h).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
      elsif conditions.has_key?(:username) || conditions.has_key?(:email)
        where(conditions.to_h).first
      end
  end
end
