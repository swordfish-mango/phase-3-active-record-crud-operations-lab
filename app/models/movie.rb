class Movie < ActiveRecord::Base
    def self.create_with_title(title)
        self.create(title: title)
    end

    def self.first_movie
        self.first
    end
    
    def self.last_movie
        self.last
    end

    def self.movie_count
        self.count
    end

    def self.find_movie_with_id(id)
        self.find(id)
    end

    def self.delete_by_id(id)
        self.destroy(id)
    end

    def self.delete_all_movies
        self.destroy_all
    end

    def self.find_movie_with_attributes(title:,release_date:)
        self.find_by(title: title,release_date: release_date)
    end
    
    def update_with_attributes(title:,release_date:)
        self.update(title: title,release_date: release_date)
    end

end