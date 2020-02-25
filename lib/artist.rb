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
  
  def add_song_by_name(name, genre = nil)
    new_song = Song.new(name, genre)
    add_song(song)
end
