require "sinatra"
require "sinatra/reloader" if development?
require "pry"
require_relative "./lib/blog.rb"
require_relative "./lib/post.rb"
enable(:sessions)

b = Blog.new
post1 = Post.new("title 1",Time.now.strftime("%d/%b/%Y:%H:%M:%S"),"text")
post2 = Post.new("title 2",Time.now.strftime("%d/%b/%Y:%H:%M"),"text")
post3 = Post.new("title 3",Time.now.strftime("%d/%b/%Y:%H"),"text")
b.add_post(post1)
b.add_post(post2)
b.add_post(post3)


get "/" do 
  @postArray = b.latest_post
  #binding.pry
  erb(:add)
end

post "/post_details/?:postNum?" do
  @postNum = params[:postNum]
  redirect "/post_details/:postNum"
    erb(:add)
  end























