#require_relative './lib/song.rb'
class Artist 
  attr_accessor :name 
  
  def initialize(name)
    @name = name
  end
  
  def song 
    Song.all.select {|song| song.artist == self}
  end
  
  def add_song(song)
    song.artist = self
  end
  

end
