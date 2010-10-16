Myhoame::Application.routes.draw do
  devise_for :users

  resources :payments
  resources :homes
  resources :users

  match 'contact', :to => 'pages#contact'
  match 'about', :to => 'pages#about'
  match 'emergency', :to => 'pages#emergency'
  root :to => "pages#home"
end
