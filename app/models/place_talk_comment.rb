class PlaceTalkComment < ApplicationRecord
	belongs_to :user
	belongs_to :location
	belongs_to :place_talk
end
