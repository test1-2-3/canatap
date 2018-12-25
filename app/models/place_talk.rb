class PlaceTalk < ApplicationRecord
	belongs_to :user
	belongs_to :content

	has_many :place_talk_comments,dependent: :destroy
	has_many :favorites,dependent: :destroy
	attachment :image

    def favorited_by?(user)
      favorites.where(user_id: user.id).exists?
    end
end
