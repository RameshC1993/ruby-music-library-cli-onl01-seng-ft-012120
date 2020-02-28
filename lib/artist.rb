class Artist 
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end
  
  def self.all
    @@all 
  end
  
  def self.destroy_all 
    self.all.clear 
  end
  
  def save 
    @@all << self 
  end
  
  def self.create(name)
    new_artist = self.new(name)
    new_artist.save 
    return new_artist
  end
  
  def add_song(song)
    song.artist = self 
  end
end