Rails.application.routes.draw do
  
  devise_for :users
  resources :recipes
  
  # root 'static_page#index'
  root 'recipes#index'

end
