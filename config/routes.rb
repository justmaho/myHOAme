Myhoame::Application.routes.draw do

  devise_for :users

  resources :payments
  resources :homes
  resources :users
  resources :services
  resources :dashboards
  
  
  get "pages/home"
  get "pages/contact"
  get "pages/about"
  get "pages/emergency"
  
  root :to => "pages#index"
  
  
  devise_scope :user do
    get "/login" => "devise/sessions#new"
    get "/logout" => "devise/sessions#destroy"
    get "/signup" => "devise/registrations#new"
  end
end
