class BandsController < ApplicationController

  def index

  end

  def create
    band = Band.new(params[:band])

    if band.save
      redirect_to band_url(band)
    else
      render :json => band.errors.full_messages
    end
  end

  def new
    @band = Band.new
    render :new
  end

  def edit
    @band = Band.find(params[:id])
  end

  def show
    @band = Band.find(params[:id])
    render :show
  end

  def update

  end

  def destroy
    Band.destroy(params[:id])

    render :text => "Band deleted"
  end

end
