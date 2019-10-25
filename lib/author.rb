class Author
  attr_accessor :name, :posts
  
    def initialize(name)
    @name = name
    @posts=[]
    
    end
    
    def posts
    Post.all.select {|post| post.author == self}
    end
    
    def add_post(i)
      @posts << i
      i.author = self  
    end
    
    def add_post_by_title(title)
      post = Post.new(title)
      self.posts << post
      post.author = self
    end
end