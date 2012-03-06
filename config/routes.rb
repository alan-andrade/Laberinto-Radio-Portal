PortalDeLocutores::Application.routes.draw do
	resources :presenter_sessions do
		match 'login'	,	action: :new
		match 'logout' 	,	actions: :destroy
	end
	match 'lobby'	=>	'lobby#index', :contoller=>'lobby'
	resources :programs do
		resources	:requests,	:only=>[:create,:destroy] do
			match	'approve', :action=>'approve'
		end
	end
	resources :presenters
	resource :presenter_session
	
end
