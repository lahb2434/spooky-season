Rails.application.routes.draw do
  resources :cards, :elements, :backgrounds, only: [:index, :create]
end
