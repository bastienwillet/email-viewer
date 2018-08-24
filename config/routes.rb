Rails.application.routes.draw do
  root to: "emails#index"
  post '/', to: "emails#create"
  resources :emails, only: [:create, :destroy, :show]
end
