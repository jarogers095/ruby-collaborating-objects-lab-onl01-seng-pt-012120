class Song
  @@all = []
  attr_accessor(:name, :artist)
  
  def initialize(song_name)
    @name = song_name
    @@all << self
  end
  
  def artist_name=(artist_name)
    an_artist = Artist.find_or_create_by_name(artist_name)
    an_artist.add_song(self)
  end
  
  def self.all()
    return @@all
  end
  
  def self.new_by_filename(filename)
    song_name = filename.split(//)
  