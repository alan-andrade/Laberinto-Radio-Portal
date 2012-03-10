PortalDeLocutores::Application.routes.draw do
	match 'login'	=>	'presenter_sessions#new'
	match 'logout' 	=> 	'presenter_sessions#destroy'

	#match 'lobby'	=>	'lobby#index', :contoller=>'lobby'
	
	resource 'lobby' do
		match 'docs' , :action=>'docs'
	end

	resources :programs do
		resources	:requests,	:only=>[:create,:destroy] do
			match	'approve', :action=>'approve'
		end
	end
	resources :presenters
	resource :presenter_session
	
end
