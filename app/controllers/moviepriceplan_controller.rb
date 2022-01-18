class MoviepriceplanController < ApplicationController

    def pricing
      @priceplans = Moviepriceplan.all
      
    end
end
