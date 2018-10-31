Rails.application.routes.draw do
  resources :subcategories
  resources :notecards
  resources :categories
  resources :documents
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post '/documents-and-category', to: 'documents#custom_create'

  post "/login", to: "sessions#login"
  get "/persist", to: "sessions#persist"

end
