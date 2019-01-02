class FavoritesController < ApplicationController
        def create
            place_talk = Location.find(params[:location_id])
            favorite = current_user.favorites.new(location_id: place_talk.id)
            favorite.save
            redirect_to location_path(place_talk)
        end
        def destroy
            place_talk = Location.find(params[:location_id])
            favorite = current_user.favorites.find_by(location_id: place_talk.id)
            favorite.destroy
            redirect_to location_path(place_talk)
        end
end
