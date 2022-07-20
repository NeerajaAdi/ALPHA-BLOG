class ApplicationController < ActionController::Base
    def home
        render html: 'Welcome to the Home Page'
    end
        
    def alpha_blog
       render html: 'Aplha-Blog page'
    end
end

