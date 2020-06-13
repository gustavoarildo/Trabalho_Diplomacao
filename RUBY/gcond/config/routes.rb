Rails.application.routes.draw do
  devise_for :users
  root to: "demonstrativos#index"
  resources :demonstrativos
  resources :conddespesas
  resources :rfinanceiros
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
