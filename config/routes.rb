Rails.application.routes.draw do
  resources :blogs
  resources :career_details

  resources :web_portfolios

  get 'ml_portfolios/delete'
  get 'ml_portfolios/destroy'
  resources :ml_portfolios do
    get 'show', to: 'show#id'
  end
  get 'pages/home'
    root "pages#home"
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
