Rails.application.routes.draw do
  root to: "meetings#index"
  resources :meetings
  resources :menus, except: :show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
