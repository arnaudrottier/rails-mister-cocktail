Rails.application.routes.draw do
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create] # resources :doses, only: :show
  end
  resources :doses, only: :destroy
end
