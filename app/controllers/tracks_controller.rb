class TracksController < ApplicationController

  def index

  end

  def create
    track = Track.new(params[:track])

    if track.save
      redirect_to track_url(track)
    else
      render :json => track.errors.full_messages
    end

  end

  def edit
    @track = Track.find(params[:id])
    render :edit
  end

  def new
    @track = Track.new
    render :new
  end

  def show
    @track = Track.find(params[:id])
  end

  def update

  end

  def destroy
    Track.destroy(params[:id])

    render :text => "Track deleted"
  end

end
