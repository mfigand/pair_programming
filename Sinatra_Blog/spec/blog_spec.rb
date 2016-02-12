require 'rspec'
require 'rack/test'
require './lib/blog.rb'
require './lib/post.rb'


RSpec.describe 'Sinatra Blog' do
   before :each do
     @blog = Blog.new
     @post1 = Post.new("title",Time.now.strftime("%d/%b/%Y:%H:%M:%S"),"text")
     @post2 = Post.new("title",Time.now.strftime("%d/%b/%Y:%H:%M"),"text")
   end

  it "Posts returns an array" do
    @blog.add_post(@post1)
    expect(@blog.posts).not_to be(nil)

  end

   it "Sort by date" do
    @blog.add_post(@post1)
    @blog.add_post(@post2)
    post_by_date = @blog.latest_post
    expect(post_by_date[0]).not_to be(@post2)

  end



end










