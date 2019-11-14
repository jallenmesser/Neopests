class AdoptionsController < ApplicationController
    def index
        @pests = Pest.adoptable
    end

    
end