Rails.application.routes.draw do
  resources :repeated_tasks
  resources :tasks
  root "home#dashboard"
  post "/created_repeated_tasks", to: "home#create_repeeated_task"
end
