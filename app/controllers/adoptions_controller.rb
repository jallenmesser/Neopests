class AdoptionsController < ApplicationController
    before_action :authorized
    def index
        @pests = Pest.adoptable
        @user = User.find(session[:user_id])
    end

    
end