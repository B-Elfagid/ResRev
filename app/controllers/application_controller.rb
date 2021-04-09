class ApplicationController < ActionController::Base
    
    #gives acess to methods in the views
    helper_method :current_owner, :logged_in?


    private 
    def current_owner
        @current_owner ||=Owner.find_by_id(session[:owner_id]) if session[:owner_id]
    end 

    def logged_in?
        !!session[:owner_id]
    end 

    def redirect_if_not_logged_in
        redirect_to '/' if !logged_in?
    end 
    


end 

