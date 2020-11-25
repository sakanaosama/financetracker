class StocksController < ApplicationController

    def search
        stock = Stock.new_lookup(params[:stock])

        # render json:stock 
        #--throw a json to screen 




      if params[:stock].present?
        @stock = Stock.new_lookup(params[:stock])
        if @stock
          render 'users/my_portfolio'
        else
          flash[:alert] = "Please enter a valid symbol to search"
          redirect_to my_portfolio_path
        end    
      else
        flash[:alert] = "Please enter a symbol to search"
        redirect_to my_portfolio_path
      end



    end
  
  end 