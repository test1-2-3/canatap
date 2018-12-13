class Content < ApplicationRecord
	belongs_to :user
	belongs_to :genre
	attachment :image

	has_many :edit_contents
	has_many :content_tagmap
	has_many :place_talks
end
