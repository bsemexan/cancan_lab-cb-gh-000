class NotesController < ApplicationController
  def create
    if current_user

  end

  def note_params
    params.require(:note).permit(:content, :visible_to)
  end
end
