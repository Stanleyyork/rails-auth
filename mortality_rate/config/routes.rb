Rails.application.routes.draw do

	root to: 'mortality#index'

	get '/login' => 'sessions#new'
	post '/login' => 'sessions#create'
	get '/logout' => 'sessions#destroy'

	get '/signup' => 'users#new'
	post '/users' => 'users#create'

	get '/index' => 'mortality#index'


end
