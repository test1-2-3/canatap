class EditContent < ApplicationRecord
	belongs_to :user
	belongs_to :content
	belongs_to :genre
	attachment :image
end
