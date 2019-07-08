Rails.application.routes.draw do
  resources :player_games
  resources :player_tournaments
  resources :games
  resources :tournaments
  resources :players
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
