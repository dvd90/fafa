Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "admin_dashboard", to: "jewels#admin_dashboard", as: :admin_dashboard
  resources :jewels do
    resources :orders, only: [ :new, :create, :show ] do
      resources :payments, only: [:new, :create]
    end
  end
  resources :orders, only: [ :edit, :update, :destroy ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
