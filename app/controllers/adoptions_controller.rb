class AdoptionsController < ApplicationController
    def index
        @pests = Pest.adoptable
        @user = User.first
    end
end