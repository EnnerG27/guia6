Rails.application.routes.draw do
  resources :estudiantes
  get "up" => "rails/health#show", as: :rails_health_check
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "estudiantes#index" 
end
