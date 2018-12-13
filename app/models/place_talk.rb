class PlaceTalk < ApplicationRecord
	belongs_to :user
	belongs_to :content
	attachment :image

	has_many :place_talk_comments
	has_many :favorites
end
