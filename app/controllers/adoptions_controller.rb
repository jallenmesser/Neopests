class AdoptionsController < ApplicationController
    before_action :authorized
    def index
        @pests = Pest.adoptable
        @user = User.first
    end

    
end