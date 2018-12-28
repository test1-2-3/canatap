class PlaceTalksController < ApplicationController
   before_action :authenticate_user! 
   protect_from_forgery except: :search
  def index
    @place_talks = PlaceTalk.all.order(created_at: "DESC")
  end

  def show
    @place_talk = PlaceTalk.find(params[:id])
    @place_talk_comment = PlaceTalkComment.new
  end

  def new
    @PlaceTalks = PlaceTalk.new(place_talk_params)

    if @PlaceTalk.save
      puts "asss"
      render 
    else
      render json: {result: "ng", msg: @PlaceTalk.errors.messages}
    end
  end

  def edit
    @place_talk = PlaceTalk.find(params[:id])
  end

  def detail
    lat = params["location"].split(",")[0].to_f
    lon = params["location"].split(",")[1].to_f
    location = Location.where(latitude: lat).where(longitude: lon)[0]
    render json: {result: "ok", location: location}
  end

  def search
    lat = params["location"].split(",")[0].to_f
    lon = params["location"].split(",")[1].to_f
    location = Location.where(latitude: lat).where(longitude: lon)[0]
    render json: {result: "ok", location: location}
  end

  def create
    if params[:location] #作成ボタン
      @location = Location.new(location_params)
        # binding.pry
      if @location.save
        @locations = Location.all
        puts "asss"
        render json: {result: "ok", location: @locations}
      else
        render json: {result: "ng", msg: @location.errors.messages}
      end
    else #地図を表示するボタン
       @locations = Location.all
       render json: {result: "ok", location: @locations}
    end
  end

  def update
    @place_talk = PlaceTalk.find(params[:id])
    @place_talk.update(place_talk_params)
    redirect_to user_path(@place_talk.user_id)
  end

  def destroy
  end

  private
  def location_params
      params.require(:location).permit(:adress, :longitude, :latitude,:prefecture,:place_name,:comment,:content_id,)
  end
end
