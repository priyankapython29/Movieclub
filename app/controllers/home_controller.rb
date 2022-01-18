class HomeController < ApplicationController
    
def index 
    
    @moviesrating = Movie.all.select { |movie| movie.rating > 4.0 }
    @moviesnewitemsession = Movie.all.select { |movie| movie.newitemofthissession == "yes" }
    
        if session[:user_id]
            @user = User.find_by(id: session[:user_id])
            
        end
    end

end
