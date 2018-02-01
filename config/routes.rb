Rails.application.routes.draw do
  resources :users do
  	resources :addresses
  end
  root 'users#new'
end
