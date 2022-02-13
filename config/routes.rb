Rails.application.routes.draw do
  resources :ml_portfolios
  resources :web_portfolios
  get 'pages/home'
    root "pages#home"
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
