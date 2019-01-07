class UserTalksController < ApplicationController
  def create
    @room = Room.find_by(user_id: params[:user_id])
    @talk = current_user.user_talks.new(user_talks_params)
    @talk.room_id = @room.id
    # binding.pry

    @talk.save
    redirect_to user_path(params[:user_id])
  end

  def destroy
    talk =  UserTalk.find(params[:id])
    room = Room.find(talk.room_id)
    talk.destroy
    redirect_to user_path(room.user_id)
  end

private
  def user_talks_params
  	params.require(:user_talk).permit(:user_talk)
  end

end
