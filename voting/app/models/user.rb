class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable,
  :confirmable, :lockable, :timeoutable, :trackable
  validates :username, presence: true, uniqueness: true
  #
  # after_create :assign_default_role
  
  # def assign_default_role
  #   self.add_role(:voter) if self.roles.blank?
  # end
  #


# 
attr_writer :login

def login
  @login || self.username || self.email || self.un_id
end

def self.find_for_database_authentication(warden_conditions)
  conditions = warden_conditions.dup
  if (login = conditions.delete(:login))
    where(conditions.to_h).where(["lower(username) = :value OR lower(un_id) = :value ", { :value => login.downcase }]).first
  elsif conditions.has_key?(:username) || conditions.has_key?(:email) || conditions.has_key?(:un_id)
    where(conditions.to_h).first
  end
end
  # 
end
