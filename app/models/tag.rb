class Tag < ApplicationRecord
	has_many :content_tagmaps
	has_many :user_tagmaps
end
