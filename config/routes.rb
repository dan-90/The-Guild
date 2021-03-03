Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :guilds do
    resources :milestones
    resources :posts, only: [:new, :create, :edit, :update, :destroy]

    member do
      get "manage"
    end
  end

end
