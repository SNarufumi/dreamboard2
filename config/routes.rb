Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  
  resources :books
  resources :posts
  resources :users
  get '/categories/:id' => 'categories#show' , :as => :categories

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
