Rails.application.routes.draw do
  
  resources :recipes
  
  # root 'static_page#index'
  root 'recipes#index'

end
