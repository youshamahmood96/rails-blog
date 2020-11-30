class PagesController < ApplicationController
    def index
        redirect_to articles1_index_path if logged_in?
    end
    def about
    end  
end