Rails.application.routes.draw do
  devise_for :users
  resources :welcome, :only => [:index]
  root "welcome#index"
  resources :users, :only =>[:index, :show, :edit, :update]
  resources :messages, :only =>[:create]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
