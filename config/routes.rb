PortalDeLocutores::Application.routes.draw do
	resources :user_sessions
	match 'login'	=>	'user_sessions#new'
	match 'logout' 	=> 	'user_sessions#destroy'
	resources :broadcasters

	#match 'lobby'	=>	'lobby#index', :contoller=>'lobby'
	
	resource 'lobby' do
		match 'docs' , :action=>'docs'
	end

	resources :programs do
		post 'join', :action=>'join'
	end
	
end
