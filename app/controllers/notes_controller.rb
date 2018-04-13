class NotesController < ApplicationController
  def create

  end

  def note_params
    params.require(:note).permit(:content, :visible_to)
  end
end
