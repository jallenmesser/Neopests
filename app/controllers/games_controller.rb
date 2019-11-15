class GamesController < ApplicationController
    before_action :authorized
    def play
        @user = User.find(session[:user_id])
    end

    def add_crusts
        @user = User.find(params[:id])
        user_crusts = @user.crusts
        added_crusts = params[:crust_amount].to_i
        total_crusts = user_crusts + added_crusts
        @user.update(crusts: total_crusts)
        redirect_to play_path
      end

    
end