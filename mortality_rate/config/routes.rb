Rails.application.routes.draw do

	root to: 'mortality#index'

	get '/login' => 'sessions#new'
	post '/login' => 'sessions#create'
	get '/logout' => 'sessions#destroy'

	get '/signup' => 'users#new'
	post '/users' => 'users#create'

	get '/index' => 'mortality#index'
	get '/mortality' => 'mortality#index'
	get '/mortality/:id' => 'mortality#show'

	resources :users
	resources :sessions
	resources :password_resets

end
