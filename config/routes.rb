Rails.application.routes.draw do
  
  resources :recipes
  
  root 'static_page#index'

end
