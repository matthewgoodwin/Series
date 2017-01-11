Rails.application.routes.draw do
  get 'user_show/index'

  get 'user_show/show'

  get 'user_show/create'

  get 'user_show/destroy'

  devise_for :users
  root to: "pages#home"
  resources :shows, only: [:show]
  get "contact", to: "pages#contact"
  get "about", to: "pages#about"
  get "search", to: "pages#search"
  get "shell", to: "pages#shell"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
