class Content < ApplicationRecord
	belongs_to :user
	belongs_to :genre
	attachment :image

	has_many :edit_contents
	has_many :content_tagmaps
	has_many :place_talks
	has_many :locations
end
