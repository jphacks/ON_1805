Rails.application.routes.draw do
  get '/', to: "users#index"
  get 'aggregate/show'
  resources :users
  post '/signup',  to: 'users#create'
  get  '/signup',  to: 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
