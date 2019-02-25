class SongsController < ApplicationController
  def show
    @song = song
  end

  def create
    @song = Song.create(song_params(:name, :artist_id, :genre_id))
    redirect_to @song
  end

  def edit
    @song = song
  end

  def update
    @song = song
    @song.update(song_params(:name, :artist_id, :genre_id))
    redirect_to @song
  end

  private

  def song
    Song.find(params[:id])
  end

  def song_params(*args)
    params.require(:song).permit(args)
  end
end
