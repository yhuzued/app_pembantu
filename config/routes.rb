Rails.application.routes.draw do
  resources :repeated_tasks
  resources :tasks
  root "home#dashboard"
end
