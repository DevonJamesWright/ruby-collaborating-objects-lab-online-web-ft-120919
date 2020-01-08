class Song
  attr_accessor :name, :artist, :genre 
  @@all = []
  @@filename = []
  def initialize(name)
    @name = name #songs
    save
  end 
  def save 
    @@all << self
  end 
  def self.all 
    @@all 

  end 
  def self.new_by_filename(name)
    binding.pry
    filename = name.split(/-/).map(&:strip)
    song_name = filename[1]
    song_name = self.new(song_name)
    artist_name = filename[0]
    artist_name = Artist.find_or_create(artist_name)
    
  end
  
end 