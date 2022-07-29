class ApplicationController < ActionController::Base
    def home
        render html: 'Welcome to the Home Page'
    end
        
    def alpha_blog
       render html: 'Aplha-Blog page'
    end
    helper_method :current_user, :logged_in?
    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    def logged_in?
        !! current_user  
    end
    def require_user
        if !logged_in?
            flash[:alert] = "You must loggedin to perform this action!!"
            redirect_to login_path
        end
    end

    
end

