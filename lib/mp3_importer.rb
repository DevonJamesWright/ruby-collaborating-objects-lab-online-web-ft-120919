class MP3Importer#utility class 
    attr_accessor :path, :files #2nd priority to `def` 
  def initialize(path)
    @files = []
    @path = path
    
  end
  
  def files(mp3s)
    files = Dir.entries(mp3s)
  end
  
end