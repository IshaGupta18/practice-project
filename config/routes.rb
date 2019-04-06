Rails.application.routes.draw do
	get 'users', to:'users#index'
  	get 'users/new', to:'users#new'
  	post 'users', to:'users#create'
	get 'users/sign_in', to: 'users#sign_in'
  	post 'users/create_session', to: 'users#create_session'
	get 'users/wall', to: 'users#wall'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
