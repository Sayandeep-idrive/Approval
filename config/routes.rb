Rails.application.routes.draw do
  resources :books
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root "books#index"
  get '/admin', to: "books#admin"
  get '/search', to: "books#search"
  get '/approve', to: "books#approve"
  get '/approveDone', to: "books#approveDone"
  get '/Invalid', to: "books#Invalid"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
