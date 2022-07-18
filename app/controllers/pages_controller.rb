class PagesController < ApplicationController
	def home
    render html:'Home Page'
    end

    def alpha_blog
        render html: 'alpha-blog page is activated now'
	end
end
