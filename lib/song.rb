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
    filename.to_s 
    filename.each do |file| @@filename << file end 
    song_name = @@filename[1]
    song_name = self.new(song_name)
    artist_name = @@filename[0]
    artist_name = Artist.new(artist_name)
    renew_array(@@filename)
  end
  def self.renew_array(array)
    counter = 0 
    if array.size > 3 
      3.times array.shift
    end
  end 
end 