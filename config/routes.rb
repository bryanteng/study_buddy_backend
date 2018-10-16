Rails.application.routes.draw do
  resources :categories
  resources :documents
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post '/documents-and-category', to: 'documents#custom_create'

end
