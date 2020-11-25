Rails.application.routes.draw do
 
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :businesses do 
    resources :bookmarks, only: [ :create, :destroy  ]
  end
  resources :users, only: [ :edit, :update ] do 
    resources :bookmarks, only: [ :index,  :destroy ]
  end
end
