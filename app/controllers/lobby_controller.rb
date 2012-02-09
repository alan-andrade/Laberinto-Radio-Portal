class LobbyController < ApplicationController
	before_filter	:require_user
	
	def index
		@claims	=	@current_user.claims
		@requests	=	@current_user.requests
	end
end
