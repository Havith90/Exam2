Rails.application.routes.draw do
  resources :conversations
  resources :leads
  resources :statuses
  devise_for :users
  root "main#home"
end
