class ContentTagmap < ApplicationRecord
	belongs_to :tag
	belongs_to :content
end
