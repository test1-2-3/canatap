class Content < ApplicationRecord
	belongs_to :user,optional: true
	belongs_to :genre,optional: true
	attachment :image

	has_many :edit_contents
	has_many :content_tagmaps
	has_many :place_talks


	belongs_to :location,optional: true
end
