class BandsController < ApplicationController

  def new
    @band = Band.new
    render :new
  end

  def edit
    @band = Band.find(params[:id])
  end

  def create
    band = Band.new(params[:band])

    if band.save
      render :text => 'Band saved'
    else
      render :json => band.errors.full_messages
    end
  end

end
