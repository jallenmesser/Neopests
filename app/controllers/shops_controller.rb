class ShopsController < ApplicationController
    before_action :authorized
    def shop
        @user = User.find(session[:user_id])
    end

    def purchase
        @user = User.find(params[:id])
        user_crusts = @user.crusts
        removed_crusts = params[:crust_amount].to_i
        total_crusts = user_crusts - removed_crusts
        @user.update(crusts: total_crusts)
        pest = Pest.find(params[:pest_id])
        pest.update(color: params[:color])
        redirect_to shop_path
    end


    
end