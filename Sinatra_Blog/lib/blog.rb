class Blog
  attr_reader :posts, :sort_by_date
 def initialize
  @posts = []
  @sort_by_date = nil
 end

 def add_post(post)
  @posts << post
 end

 def latest_post
  @sort_by_date = @posts.sort { |post1, post2| post2.date <=> post1.date }
 end
 def each_with_index
  
 end

end

