Rails.application.routes.draw do
	# login form
  get 'login', to: 'login#new'

  #check to see if we have a user, then set session[:user_id]
 	post 'login',to: 'login#create'

  delete 'logout', to: 'login#destroy'

  resources :users
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'home#index'

  get '/hello', to: 'greeting#hello'

  get '/goodbye', to: 'greeting#goodbye'
end
