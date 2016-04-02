Rails.application.routes.draw do
  
  devise_for :users
  resources :recipes
  
  # root 'recipes#welcome'
  root 'recipes#index'

  get "like" => "recipes#like"
  get "unlike" => "recipes#unlike"
end
