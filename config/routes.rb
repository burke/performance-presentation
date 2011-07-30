Twitter::Application.routes.draw do

  root to: 'timeline#index'

  resources :timeline do
    collection { get :fancy }
  end 
  
end
