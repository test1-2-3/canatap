class Room < ApplicationRecord
	belongs_to :user

	has_many :user_talks
end
