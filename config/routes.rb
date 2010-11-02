Myhoame::Application.routes.draw do

  match '/calendar(/:year(/:month))' => 'calendar#index', :as => :calendar, :constraints => {:year => /\d{4}/, :month => /\d{1,2}/}

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
