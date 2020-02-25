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
  
  def add_post_by_title(name)
    new_post = Post.new(name)
    add_post(new_song)
  end
  
  def self.song_count
    Song.all.length 
  end
  
end