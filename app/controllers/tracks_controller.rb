class TracksController < ApplicationController
  def create
    track = Track.new(params[:track])

    if track.save
      render :text => 'Track saved'
    else
      render :json => track.errors.full_messages
    end

  end

  def new
    @track = Track.new
    render :new
  end

  def edit
    @track = Track.find(params[:id])
    render :edit
  end


end
