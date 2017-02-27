class Movie < ActiveRecord::Base
    
    def self.all_ratings
        #Movie.select(:rating).uniq.map{|movie| movie.rating}.sort
        a= Array.new
        self.select("rating").uniq.each {|x| a.push(x.rating)}
        a.sort.uniq
    end
end
