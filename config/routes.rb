Rails.application.routes.draw do
  resources :cards, only: [:index, :create]
end
