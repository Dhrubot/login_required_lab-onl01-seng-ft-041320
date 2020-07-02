class SessionsController < ApplicationController

    def new
    end

    def create
        if params[:name].empty?
            redirect_to sign_in_path
        else
            session[:name] = params[:name]
            redirect_to root_path
        end
    end

    def destroy
        session.clear
    end
end
