class FavoritesController < ApplicationController
        def create
            place_talk = Location.find(params[:place_talk_id])
            favorite = current_user.favorites.new(place_talk_id: place_talk.id)
            favorite.save
            redirect_to place_talk_path(place_talk)
        end
        def destroy
            place_talk = Location.find(params[:place_talk_id])
            favorite = current_user.favorites.find_by(place_talk_id: place_talk.id)
            favorite.destroy
            redirect_to place_talk_path(place_talk)
        end
end
