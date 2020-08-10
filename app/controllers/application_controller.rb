class ApplicationController < ActionController::Base

before_action :fetch_user

def fetch_user

    #check whether the user_id in the session is the iD of a real user in DB.
    if session[:user_id].present?
        @current_user = User.find_by id: session[:user_id]
    end #session checker

    # if nil from above query, delete session because user_id is stale()
    session[:user_id] = nil unless @current_user.present?
    end # fetch_user

    def check_if_logged_in

    #If current browser user not logged in, method redirects to login page;
        redirect_to login_path unless @current_user.present?
    end 


end # applicationController
