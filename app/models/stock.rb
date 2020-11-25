class Stock < ApplicationRecord
    def self.new_lookup(ticker_symbol)

        # publishable_token: Rails.application.credentials.iex_client[:sandbox_api_key],

        # publishable_token: Rails.application.credentials.iex_client[:sandbox_api_pub],
        # secret_token: Rails.application.credentials.iex_client[:sandbox_api_sec],
        
        client = IEX::Api::Client.new(
            publishable_token: "Tpk_1ada2741ca2a4640871a1ef399ab2a13",
            secret_token: 'Tsk_aae83297a4074cb98a52f06070d316a0',
            endpoint: 'https://sandbox.iexapis.com/v1')
                
            # client.price(ticker_symbol)
        begin
            new(ticker: ticker_symbol, name: client.company(ticker_symbol).company_name, last_price: client.price(ticker_symbol))
            # puts "!!!!!--work"   

        rescue => exception
                # puts "log:---------------------------------------------------------------" 
                # puts exception           
            return nil

        end



    end
end
