class MP3Importer#utility class 
    attr_accessor :path, :files #2nd priority to `def` 
  def initialize(path)
    @files = []
    @path = path
    
  end
  
  def files(dir)
    files = Dir.foreach(dir) \
           .map { |x| File.expand_path("#{dir}/#{x}") } \
           .select { |x| File.file?(x) }
  end
  
end