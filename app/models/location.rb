class Location < ApplicationRecord
	belongs_to :user, optional: true

	has_many :location_contents, dependent: :destroy
	has_many :contents
	accepts_nested_attributes_for :contents
	attachment :image
end
