class UserTagmap < ApplicationRecord
	belongs_to :tag
	belongs_to :user
end
