class Car < ApplicationRecord
	validates :name, presence:true, uniqueness: true
end
