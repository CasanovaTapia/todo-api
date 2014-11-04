Rails.application.routes.draw do
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#create", :as => "log_in"
  get "sign_up" => "users#create", :as => "sign_up"


  resources :tasks, except: [:new, :edit]
  resources :users, except: [:new, :edit]
  resources :sessions, only: [:create, :destroy]
end
