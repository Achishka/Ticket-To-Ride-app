Rails.application.routes.draw do
  resources :trains, :routes, :tickets, :users, :carriages
  resources :railway_stations do
    patch :update_position, on: :member
  end

  get 'welcome/index'
  root 'welcome#index'
  #get '/', to: 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
