Rails.application.routes.draw do
  root to: "pages#home"
  resources :shows, only: [:show]
  get "contact", to: "pages#contact"
  get "about", to: "pages#about"
  get "search", to: "pages#search"
  get "shell", to: "pages#shell"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
