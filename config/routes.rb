Rails.application.routes.draw do


  get 'reports/funcionario', to: 'reports#funcionario'
  resources :purchases
  resources :reports, only: [:index, :funcionario]
  resources :customers
  resources :providers
  resources :stocks
  resources :products
  devise_for :users
  resources :users
  #Controller Home e Página index por padrão
  root 'home#index'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
