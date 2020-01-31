Rails.application.routes.draw do
  resources :notes
  resources :job_entries
  resources :jobs
  devise_for :users

  post 'webhook', to: 'webhook#handle'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
