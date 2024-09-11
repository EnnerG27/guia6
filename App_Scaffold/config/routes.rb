Rails.application.routes.draw do
  resources :buys
  get "up" => "rails/health#show", as: :rails_health_check
  root "buys#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
 