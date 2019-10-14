Rails.application.routes.draw do
  # root "main#index"
  get '/', to: 'main#index'
  get '/cities/', to: 'cities#view'
  get '/cities/view', to: 'cities#view'
  get 'cities/new', to: 'cities#new'
  post '/cities/view', to:'cities#create'
  get '/cities/update', to:'cities#update'
  get '/cities/reset', to:'cities#reset'
  post '/cities/reset', to:'cities#delete'
end
