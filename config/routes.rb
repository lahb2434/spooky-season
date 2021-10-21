Rails.application.routes.draw do
  get 'cards/index'
  resources :cards, only: [:index]
end
