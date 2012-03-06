class PresenterSessionsController < ApplicationController
	before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => :destroy
  
	def new
		@user_session = PresenterSession.new
  end

  def create
    @user_session = PresenterSession.new(params[:presenter_session])
    p @user_session
    if @user_session.save
      logger.debug "passed the user session save."
      redirect_to lobby_url
    else    	
      render action: :new
    end
  end

  def destroy
    current_user_session.destroy
    redirect_to login_url
  end
end
