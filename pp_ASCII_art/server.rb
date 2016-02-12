require "sinatra"
require "sinatra/reloader" if development?
require "artii"
enable(:sessions)

# get "ascii/one_random_word" do

# end

get "/ascii/?:insert?/?:font?/?:secret?" do#convert the word to ASCII and then print it out
  @insert = params[:insert]
  @font = params[:font]
  @secret = params[:secret]
  @secretPage = false
  @art = Artii::Base.new :font => @font != nil ? @font : 'slant'
  @secrePage = @insert == "unicorn" && @font == "special" && @secret == "secret"
  @word = @art.asciify(@insert)
  erb(:word)
end










