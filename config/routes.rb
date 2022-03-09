Rails.application.routes.draw do
  devise_for :users

  resources :cars do
    resources :bookings, only: [:create, :new]
  end

  resources :bookings, only: [:index]


  devise_scope :user do
    authenticated :user do
      root "cars#index", as: :authenticated_root
    end
    unauthenticated do
      root "pages#home", as: :unauthenticated_root
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
