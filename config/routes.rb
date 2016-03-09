Rails.application.routes.draw do
  
  resources :recipes
  
  # root 'static_page#index'
  root 'static_page#welcome'

end
