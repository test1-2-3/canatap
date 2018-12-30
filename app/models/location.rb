class Location < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :content,optional: true
	attachment :image
end
