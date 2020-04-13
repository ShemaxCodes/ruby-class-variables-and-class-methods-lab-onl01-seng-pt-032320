class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  @@artists = []
  @genres = []
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre 
    @@count += 1 
    @@artists << artist 
  end
  
  def self.count 
    @@count 
  end 
  
  def self.artists 
    @@artists
  end 
  
  def self.genres 
    @@genres
  end 
  
  def self.genre_count 
    genre_count = Hash.new 
    @@genres.each {|genre| genre_count[genre] += 1}
    genre_count
end
end 