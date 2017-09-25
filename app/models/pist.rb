class Pist < ApplicationRecord
	belongs_to :user
	has_many :commonts
end
