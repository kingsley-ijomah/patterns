Rails.application.routes.draw do
  resources :people, only: [:new, :create, :edit, :update]
end
