class ApplicationController < ActionController::Base
  helper_method :current_user_session, :current_user
  protect_from_forgery

  private
    def current_user_session
      return @current_user_session if defined?(@current_user_session)
      @current_user_session = PresenterSession.find
    end

    def current_user
      return @current_user if defined?(@current_user)
      @current_user = current_user_session && current_user_session.presenter
    end
    
    def require_user
      unless current_user
        store_location
        flash[:notice] = "You must be logged in to access this page"
        redirect_to new_presenter_session_url
        return false
      end
    end

    def require_no_user
      if current_user
        store_location
        flash[:notice] = "You must be logged out to access this page"
        redirect_to @current_user
        return false
      end
    end
    
    def store_location
      session[:return_to] = request.env["SERVER_ADDR"]
    end
    
    def redirect_back_or_default(default)
      redirect_to(session[:return_to] || default)
      session[:return_to] = nil
    end
    
    def need_admin
    	unless current_user.admin?
    		flash[:notice]	=	"Necesitas ser administrador para hacer eso."
    		redirect_to @current_user
    	else
    		@admin = true 		
    	end 
    end
end
