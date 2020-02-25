class Author
  attr_accessor :name 
  
  def initialize(name)
    @name = name
  end
  
  def posts 
    Post.all.select {|array| array.author == self}
  end
  
  def add_post(array)
    array.author = self
  end
  
  def add_song_by_name(name)
    new_song = Song.new(name)
    add_post(new_song)
  end
  
  def self.song_count
    Song.all.length 
  end
  
end