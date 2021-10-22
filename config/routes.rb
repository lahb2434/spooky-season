Rails.application.routes.draw do
  get 'spooky_season', to: 'cards#spooky_season'
  # resources :cards, only: [:index]
end
