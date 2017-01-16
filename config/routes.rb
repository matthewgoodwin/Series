Rails.application.routes.draw do

  devise_for :users
  root to: "pages#home"
  resources :user_shows, only:[:index,:show,:create,:destroy] do
    resources :reviews, only:[:new, :create, :show, :destroy]
  end
  resources :shows, only: [:show]
  get "contact", to: "pages#contact"
  get "about", to: "pages#about"
  get "search", to: "pages#search"
  get "shell", to: "pages#shell"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
