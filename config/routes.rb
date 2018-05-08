Rails.application.routes.draw do
  
  
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	resources :users do	
		resources :products
	end
	get '/admin/:id' => 'users#admin_home'
	get '/admin/:id/users' => 'users#admin_users'
	get '/admin/:id/products' => 'users#admin_products'
	get '/admin/:id/users/:id/products' => 'users#admin_user_product'
end
