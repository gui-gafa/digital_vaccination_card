Rails.application.routes.draw do
  namespace :admin do
    resources :vaccine_types
  end
  namespace :user do
    resources :vaccines, only:[:index, :show, :new, :create, :destroy]
    resources :vaccine_types, only:[:show]
  end
  namespace :health do
    resources :user, only: [:index]
  end
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
