class SessionsController < ApplicationController
    before_action :check_user_logged_login, only: [:new]

    def new
    end

    def create
        user = User.find_by_email(params[:email])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            flash[:notice] = t('flash.logged_in')
            redirect_to root_url
            #redirect_to root_url, :notice => "Logged in!"
        else
            flash.now.alert = t('flash.Invalid_email_or_password')
            render "new"
        end
    end

    def destroy
        session[:user_id] = nil
        flash[:notice] = t('flash.you_are_logged_out')
        redirect_to root_url
        #redirect_to root_url, :notice => "You're logged out!"
    end

end
