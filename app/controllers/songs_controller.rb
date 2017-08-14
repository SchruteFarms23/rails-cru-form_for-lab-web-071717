class SongsController < ApplicationController
  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_param)
    @song.save
    redirect_to song_path(@song)
  end

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
  @song.update(song_param)
  redirect_to song_path(@song)

  end

  private

  def song_param
    params.require(:song).permit(:name,:artist_id,:genre_id)
  end



end
