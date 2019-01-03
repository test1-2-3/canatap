class UsersController < ApplicationController
 before_action :room_user, only:[:show]

  def show
  	@user = User.find(params[:id])
    @talk = UserTalk.new
    @room = Room.find_by(user_id: params[:id])
    @talk1 = UserTalk.where(room_id: @room.id)
    @favorites = Favorite.where(user_id: @user.id)
  end

  def edit
  	@user = User.find_by(id: current_user.id)
  end

  def update
  	@user = User.find(params[:id])
  	if @user.update(user_params)
        sign_in(@user, bypass: true) #---deviseではパスワードを変更するとログアウトする仕組みの為記入をしました---#
  		redirect_to user_path(@user), notce: "保存しました"
  	else
  		render :edit
  	end
  end

  def destroy
  end

  private
	def user_params
	  params.require(:user).permit(:name,:password,:password_confirmation,:profile,:image,:users_comment)
	end
    def room_user
      if Room.where(user_id: params[:id]).exists?
      else
        @room = Room.new(user_id: params[:id])
        @room.save
      end
    end
end
