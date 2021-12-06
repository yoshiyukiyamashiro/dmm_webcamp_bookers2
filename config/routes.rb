Rails.application.routes.draw do
  devise_for :users
  root to:"homes#top"
   get "/home/about" => "homes#about" , as: "about"
  resources :users,only: [:show, :index, :edit, :create, :update]
  resources :books,only: [:show, :index, :edit, :create, :update, :destroy]

end
