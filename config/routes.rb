Rails.application.routes.draw do
  resources :asignaturas
  resources :fonos
  devise_for :users
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: "home#index"

  get "/matriculas/form", to: "matriculas#index"
  get "/matriculas/new", to: "matriculas#new"
end
