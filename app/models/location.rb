class Location < ApplicationRecord
	belongs_to :user, optional: true

	has_many :location_contents, dependent: :destroy
	has_many :favorites,dependent: :destroy
	has_many :place_talk_comments,dependent: :destroy
	has_many :contents
	accepts_nested_attributes_for :contents
	attachment :image

	def favorited_by?(user)
      favorites.where(user_id: user.id).exists?
    end
end
