Myhoame::Application.routes.draw do
  resources :payments

  resources :homes

  resources :users

  match 'contact', :to => 'pages#contact'
  match 'about', :to => 'pages#about'

  root :to => "pages#home"
end
