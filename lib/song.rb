class Song 
  attr_accessor :name, :artist, :genre
  
  @@all = []
  
  def initialize(name, artist = nil, genre = nil)
    @name = name 
    @artist = artist
    @genre = genre
  end
  
  def genre=(genre)
    if genre != nil
      @genre = genre
      if !genre.songs.include?(self)
        genre.songs << self
      end
    end
  end
  
  def artist=(artist)
    if artist != nil 
      @artist = artist
      if !artist.songs.include?(self)
          artist.songs << self
        end
    end
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
    new_song = self.new(name)
    new_song.save
    return new_song
  end
  
end