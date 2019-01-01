class PlaceTalksController < ApplicationController
   before_action :authenticate_user! 
   protect_from_forgery except: :search
  def index
    # @location = Location.new(location_params)
    # @location.contents.build
    @place_talks = Location.all.order(created_at: "DESC")
    from  = Time.now.at_beginning_of_day
    to    = (from + 3.day).at_end_of_day
    @place_talk = Location.where(created_at: from...to)

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
      @location.contents.build
      # binding.pry
      @location.user_id = current_user.id
      @location.username = current_user.username
        # binding.pry
      if @location.save
        # binding.pry
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
      params.require(:location).permit(:adress, :longitude, :latitude,:prefecture,:image,:comment,:content_id, contents_attributes:[:id,:name])
  end
end
