class ApplicationController < ActionController::Base
    
    def helloworld
        render html: "Hello world"
    end

end
