class LocationContent < ApplicationRecord
	belongs_to :content,optional: true
	belongs_to :location,optional: true
end
