Rails.application.routes.draw do
  resources :trains, :railway_stations, :routes, :tickets, :users
  get 'welcome/index'
  root 'welcome#index'
  #get '/', to: 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end