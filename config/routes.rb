Rails.application.routes.draw do
  root 'pages#homepage'

  namespace :api, defaults: { format: :json } do
    resources :rooms , only:[:index]
	resources :orders, only:[:create,:index]
    resources :tasks, only: [:index, :create, :update, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
