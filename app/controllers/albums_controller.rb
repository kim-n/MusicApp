class AlbumsController < ApplicationController

  def new
    @album = Album.new
    render :new
  end

  def edit
    @album = Album.find(params[:id])
    render :edit
  end

  def create
    album = Album.new(params[:album])

    if album.save
      render :text => 'Album saved'
    else
      render :json => album.errors.full_messages
    end
  end

  def show

  end
end
