Rails.application.routes.draw do
  resources :lists, except: [:new, :edit]
  post "log_out" => "sessions#destroy", :as => "log_out"
  post "log_in" => "sessions#create", :as => "log_in"
  post "sign_up" => "users#create", :as => "sign_up"

  resources :lists, except: [:new, :edit] do
    resources :tasks, except: [:new, :edit]
  end

  resources :users, except: [:new, :edit]
  resources :sessions, only: [:create, :destroy]
end
