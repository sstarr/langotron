Rails.application.routes.draw do
  resources :git_hub_accounts, only: [:index, :new, :create]
end
