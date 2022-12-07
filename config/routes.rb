Rails.application.routes.draw do
  get 'about/index'
  resources :kitchen_frunitures
  resources :furnitures
  get 'salon/index'
  root "articles#index"
end
