Rails.application.routes.draw do

  resources :users, only: [:show] do
    # nested resource for reviews
    resources :items, only: [:index, :show, :create]
  end
 
  resources :items, only: [:index]

end
