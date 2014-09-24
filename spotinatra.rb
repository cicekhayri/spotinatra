require 'sinatra'
require 'sinatra/reloader'

songs = []

get '/' do 
  @song_list = songs
  erb :index
end

post '/add_songs' do
  @get_song = params[:name]
  @get_artist = params[:artist]
  songs << [@get_song, @get_artist]
  
  if songs.size <= 10
      redirect to('/')
  else
    "NO MORE SONGS PLEASE"
  end
end




