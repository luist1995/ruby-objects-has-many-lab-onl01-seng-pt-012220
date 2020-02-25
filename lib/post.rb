class Post
  
  attr_accessor :name, :author, :title 
  @@all = []
  
  def initialize(name, author = nil, title = nil)
    @name = name
    @author = author
    @title = title
    @@all << self 
  end
  
  def self.all
    @@all
  end
  
end