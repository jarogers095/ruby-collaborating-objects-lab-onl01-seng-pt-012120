class MP3Importer
  attr_accessor(:path)
  
  def initialize(the_path)
    @path = the_path
  end
  
  def files()
    return Dir.entries(@path).select {|f| f.include?(".mp3")}
  end
end