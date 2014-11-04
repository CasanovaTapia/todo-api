Rails.application.routes.draw do
  resources :tasks, except: [:new, :edit]
  resources :users, except: [:new, :edit]

end
