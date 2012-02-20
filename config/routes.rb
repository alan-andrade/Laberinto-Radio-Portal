PortalDeLocutores::Application.routes.draw do
	constraints :subdomain=>'admin' do
		root to: 'login'
		match	'lobby'		=>	'lobby#index', :contoller=>'lobby'
		match	'login'		=>	'presenter_sessions#new'
		match 'logout' 	=> 	'presenter_sessions#destroy'
		resources :programs do
			resources	:requests,	:only=>[:create,:destroy] do
				match	'approve', :action=>'approve'
			end
		end
		resources :presenters
		resource :presenter_session
	end
end
