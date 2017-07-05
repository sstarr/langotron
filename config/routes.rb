Rails.application.routes.draw do
  resources :git_hub_accounts, only: [:index, :create]

  root to: 'git_hub_accounts#index'
end
