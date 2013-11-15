class NotesController < ApplicationController

  def create
    note = Note.new(params[:note])

    if note.save
      redirect_to track_url(params[:note][:track_id])
    else
      render :json => note.errors.full_messages
    end

  end

  def destroy
    note = Note.find(params[:id])
    note_track = note.track_id

    Note.destroy(params[:id])

    redirect_to track_url(note_track)
  end

end
