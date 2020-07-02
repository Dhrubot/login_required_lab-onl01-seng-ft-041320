class SecretsController < ApplicationController

    before_action :authenticate
    
    def show
    end

    private
    def authenticate
        redirect_to sign_in_path if current_user.nil?
    end
end
