Rails.application.routes.draw do
  root 'tasks#index'
  resources :tasks
  patch '/done/:id', to: 'tasks#done', as: :done_task
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
