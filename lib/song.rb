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
    song = self.new(song_name)
    artist_name = filename[0]
    song.artist = Artist.find_or_create_by_name(artist_name)
    song 
  end
  
end 