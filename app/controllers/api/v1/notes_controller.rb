class Api::V1::NotesController < ApplicationController

  def index
    if params[:contact_id]
      contact = Contact.find(params[:contact_id])
      notes = contact.notes
    else
      contacts = Contact.all
      notes = contacts
    end
    render json: notes
  end

  def show
    render json: Note.find(params[:id])
  end


  def create
    note = Note.new(note_params)

    note.contact = Contact.find(params[:contact_id])
    note.user= current_user
    note.save

    render json: note
  end

  private
  def note_params
    params.require(:note).permit(:comment)
  end
end
