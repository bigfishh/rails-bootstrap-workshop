Rails.application.routes.draw do
  resources :drink_ingredients
  resources :ingredients
  resources :drinks
  resources :users

  root "drinks#index"
end
