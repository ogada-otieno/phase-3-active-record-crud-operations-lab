class Movie < ActiveRecord::Base
    def self.find_all_movies_by_year(year)
        Movie.where(year: year)
    end

    # CREATE
    def self.create_with_title(title)
        Movie.create(title: title)
    end

    # READ
    def self.first_movie
        Movie.first
    end

    def self.last_movie
        Movie.last
    end

    def self.movie_count
        Movie.count
    end

    def self.find_movie_with_id(id)
        Movie.find_by_id(id)
    end

    def self.find_movie_with_attributes(attributes)
        Movie.find_by(attributes)
    end

    # returns a list of movies released after 2002
    def self.find_movies_after_2002
        Movie.where("release_date > ? ", 2002)
    end

    # UPDATE
    def update_with_attributes(attributes)
        self.update(attributes)
    end

    def self.update_all_titles(title)
        Movie.update_all(title: title)
    end

    # DELETE
    def self.delete_by_id(id)
        Movie.destroy(id)
        # Movie.delete(id) #approach 2
    end

    def self.delete_all_movies
        Movie.destroy_all
        # Movie.delete_all #approach 2
    end
end