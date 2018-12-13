class PlaceTalksController < ApplicationController
  def index
    @place_talks = PlaceTalk.all.order(created_at: "DESC")
    @users = User.all
  end

  def show

  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
