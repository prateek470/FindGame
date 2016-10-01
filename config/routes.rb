Rails.application.routes.draw do
  resources :todonews
  resources :todo_s
  resources :todos
  get 'welcome/homepage'
  # root 'welcome#homepage'
  root 'todos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
