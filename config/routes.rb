Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	devise_for :users
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	resources :mails, only:[:new, :create]
	resources :users, only:[:show, :edit, :update, :destroy]
	resources :user_talks, only:[:create, :destroy]
	resources :place_talk_comments, only:[:create, :destroy]
	resources :place_talks do
		resource :favorites, only: [:create, :destroy]
	end

	resources :contents
    get 'search' => 'searches#search', as: "search"
	get "/homes/about" => "homes#about"
	root to: 'place_talks#index'
	post "/search" => "place_talks#search"
	post "/detail" => "place_talks#detail"
end
