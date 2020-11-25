class StocksController < ApplicationController

    def search
        stock = Stock.new_lookup(params[:stock])
        # render json:stock 
        #--throw a json to screen 

        if params[:stock].present?
        @stock = Stock.new_lookup(params[:stock])
        if @stock
          # render 'users/my_portfolio'
          respond_to do |format|
            format.js { render partial: 'users/result' }
          end        
        else
          # flash[:alert] = "Please enter a valid symbol to search"
          # redirect_to my_portfolio_path
          respond_to do |format|
            flash.now[:alert] = "Please enter a valid symbol to search"
            format.js { render partial: 'users/result' }
          end
        end    
      else
        # flash[:alert] = "Please enter a symbol to search"
        # redirect_to my_portfolio_path
        respond_to do |format|
          flash.now[:alert] = "Please enter a symbol to search"
          format.js { render partial: 'users/result' }
        end      
      end

    end
  
  end 