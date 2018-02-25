Rails.application.routes.draw do
  
  devise_for :users
  root to: "home#index"

  get 'home/index'
  get 'terms' => 'pages#terms'
  get 'about' => 'pages#about'
  #get 'contacts' => 'contacts#new' 1 variant

  resource :contacts, only: [:new, :create], path_names: {:new => ''} # 2 variant
  resources :articles do 
    resources :comments
  end

  # resource :contacts, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
 