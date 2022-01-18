class MovieController < ApplicationController

 def index
 
   @movies = Movie.all
  
   render "index"
 end

 def animation
    @movies = Movie.all.select { |movie| movie.category == "Animation" }
 end

def add

end


 def english

  @movies = Movie.all.select { |movie| movie.category == "English" }

 end

 def hindi

  @movies = Movie.all.select { |movie| movie.category == "Hindi" }

 end

 def romantic

  @movies = Movie.all.select { |movie| movie.category == "Romantic" }

 end

 def sports

  @movies = Movie.all.select { |movie| movie.category == "Sports" }

 end

 def playmovie
  @movie = Movie.find(params[:id])
  
 end

 #def topratedmovie
  #@movie = Movie.where("rating > ?", 4.0)
 
 #end

 #def newitemssessions
 
 #end
 
end
