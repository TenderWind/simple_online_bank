Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }

  devise_scope :user do
    authenticated :user do
      root 'accounts#detail', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  get 'accounts/detail', as: 'user_root'
  get 'accounts/:id', to: 'transactions#detail'
  
  resources :accounts, shallow: true do
    resources :transactions, shallow: true
  end
end
