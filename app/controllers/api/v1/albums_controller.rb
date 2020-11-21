class Api::V1::AlbumsController < ApplicationController
  before_action :artist, only: :albums

  def songs
    album = Album.find(params[:id])
    songs = album.songs
    rendering(songs, %i[name spotify_url preview_url duration_ms explicit])
  end
end
