class LobbiesController < ApplicationController
	before_filter	:require_user
	
	def show
		#@claims	=	@current_user
		#@requests	=	@current_user.requests
	end
	
	def docs;end
end
