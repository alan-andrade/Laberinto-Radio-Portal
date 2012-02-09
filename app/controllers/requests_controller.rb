class RequestsController < ApplicationController
	before_filter	:require_user
	
	def create
		@request	=	@current_user.requests.build(program_id: params[:program_id])
		@request.presenter	=	@request.program.presenters.first
		respond_to do |format|
			if @request.save
				format.html	{ redirect_to programs_url }
				format.js
			else
				format.js
				redirect_to programs_url
			end
		end
	end
	
	def approve
		@request	=	Request.find(params[:request_id])
		if @request.approve
			redirect_to @request.program, notice: "Aceptaste a #{@request.requester.name} en tu programa #{@request.program.name}"
		else
			redirect_to lobby_url
		end
	end
end
