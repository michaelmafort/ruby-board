Rails.application.routes.draw do
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'
  delete 'logout' => 'sessions#destroy'

  get "signup" => "users#new"
  resources :users
  resources :tasks
  resources :projects

  root to: "dashboards#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
