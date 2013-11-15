class AlbumsController < ApplicationController


  def index

  end

  def create
    album = Album.new(params[:album])

    if album.save
      redirect_to album_url(album)
    else
      render :json => album.errors.full_messages
    end
  end

  def new
    @album = Album.new
    render :new
  end

  def edit
    @album = Album.find(params[:id])
    render :edit
  end

  def show
    @album = Album.find(params[:id])
    render :show
  end

  def update

  end

  def destroy
    Album.destroy(params[:id])

    render :text => "Album deleted"
  end

end
