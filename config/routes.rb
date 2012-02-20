PortalDeLocutores::Application.routes.draw do
	constraints :subdomain=>'admin' do
		match	'login'		=>	'presenter_sessions#new'
		match 'logout' 	=> 	'presenter_sessions#destroy'
		resources :programs do
			resources	:requests,	:only=>[:create,:destroy] do
				match	'approve', :action=>'approve'
			end
		end
		root to: 'presenter_sessions#new'
		resources :presenters
		resource :presenter_session
		match	'lobby'		=>	'lobby#index', :contoller=>'lobby'
	end
end
