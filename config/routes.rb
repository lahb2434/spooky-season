Rails.application.routes.draw do
  resources :cards, :elements, :backgrounds, only: [:index, :create]
  get '/cards/:id', to: 'cards#show'
end
