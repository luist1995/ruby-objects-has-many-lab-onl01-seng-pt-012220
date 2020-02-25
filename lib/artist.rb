#require_relative './lib/song.rb'
class Artist 
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def song 
    Song.all.select {|song| song.artist == self}
  end
  
end
