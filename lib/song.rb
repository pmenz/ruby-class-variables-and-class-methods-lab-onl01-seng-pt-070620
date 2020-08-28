  #class method. count , #artist, #genres, #genre_count , #artist_count
  class Song 
    
    attr_accessor:name,:artist,:genre 
    
    @@count = 0 
    @@genres = []
    @@artists = []
    
    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      @@count += 1
      @@genres << genre
      @@artists << artist
      
    end
    
    def self.count 
      @@count
    end 
    
    def self.genres 
      @@genres.uniq
    end
    
    def self.artists 
      @@artists.uniq
    end 
    
    def self.genre_count 
      #idk
      counts = Hash.new(0)
      @@genres.each { |name| counts[name] += 1 }
    end 
    
    def self.artist_count
      #idk either 
    end
  end
      
    
    
    