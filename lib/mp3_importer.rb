class MP3Importer#utility class 
    attr_accessor :path, :files #2nd priority to `def` 
  def initialize(path)
    @files = []
    @path = path
    
  end
  
  def files
    @files << Dir["#{path}/*.mp3"]
  end
  
end