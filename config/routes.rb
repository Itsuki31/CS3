Rails.application.routes.draw do
  get 'top/main'
  get 'top/login_move'
  post 'top/login'
  root 'top#main'
  get 'top/logout'
  get 'top/signup_move'
  post 'top/signup'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
