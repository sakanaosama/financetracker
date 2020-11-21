class ApplicationController < ActionController::Base
    
    # def helloworld
    #     render html: "Hello world"
    # end

    before_action :authenticate_user!
    
end
