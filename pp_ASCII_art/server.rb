require "sinatra"
require "sinatra/reloader" if development?
require "artii"
enable(:sessions)

# get "ascii/one_random_word" do

# end

get "/ascii/:insert/:font" do#convert the word to ASCII and then print it out
  insert = params[:insert]
  @font = params[:font]
  @a = Artii::Base.new :font => @font
  @word = @a.asciify(insert)
  erb(:word)
end











