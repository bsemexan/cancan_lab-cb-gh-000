class NotesController < ApplicationController
  def create
    note = Note.new(note_params)
    note.user = current_user
    note.save!
    redirect_to notes_path
  end

  def update
    @note = Note.find(params[:id])
    @note.update(note_params)
    redirect_to notes_path
  end

  def note_params
    params.require(:note).permit(:content, :visible_to)
  end
end
