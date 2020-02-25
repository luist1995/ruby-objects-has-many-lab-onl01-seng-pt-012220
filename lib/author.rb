class Author
  attr_accessor :name, :title
  
  def initialize(name, title = nil)
    @name = name
    @title = title
  end
  
  def posts 
    Post.all.select {|array| array.author == self}
  end
  
  def add_post(array)
    array.author = self
  end
  
  def add_post_by_title(name, title)
    new_post = Post.new(name, title)
    add_post(new_post)
  end
  
  def self.post_count
    Post.all.length 
  end
  
end