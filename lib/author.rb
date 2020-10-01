class Author 
  
  attr_accessor :name
  
  def initialize(name) 
    @name = name
  end
  
  def posts
    Post.all.select {|art| art.author == self}
  end
  
  def add_post(art)
    art.author = self 
  end
  
  def add_post_by_title(title)
    art = Post.new(title)
    add_post(art)
  end
  
  def self.post_count
    Post.all.count
  end
  
end

