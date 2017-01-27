Rails.application.routes.draw do

  devise_for :users
  root to: "pages#home"
  resources :user_shows, only:[:index,:show,:create,:destroy] do
    collection do
      get "top", to: "user_shows#top"
    end # end of collection top rated
    resources :reviews, only:[:new, :create, :show, :destroy] do
      collection do
        get "consistent", to: "reviews#consistent"
      end
    end
  end
  resources :shows, only: [:show]
  get "contact", to: "pages#contact"
  get "about", to: "pages#about"
  get "search", to: "pages#search"
  get "shell", to: "pages#shell"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
