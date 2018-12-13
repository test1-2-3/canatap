class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:authentication_keys => [:username]
  #:authentication_keys => [:username]の記載でログイン認証に必要なものを追加



  #usernameを利用してログインするようにオーバーライド
  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      #認証の条件式を変更する
      where(conditions).where(["username = :value", { :value => username }]).first
    else
      where(conditions).first
    end
  end

	has_many :place_talks, dependent: :destroy
	has_many :rooms, dependent: :destroy
	has_many :user_talks, dependent: :destroy
	has_many :user_tagmaps, dependent: :destroy
	has_many :edit_contents, dependent: :destroy
	has_many :favorites, dependent: :destroy
	has_many :place_talk_comments, dependent: :destroy
end
