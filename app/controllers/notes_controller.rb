class NotesController < ApplicationController

before_action :authorize_user

  def destroy
    note = Note.find(params[:id])
    note.destroy
    redirect_to users_path
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])

    if @note.update(note_params)
      flash[:success] = 'Contact updated successfully'
      @note = @note.update(note_params)
      redirect_to contacts_path
    else
      @errors = @note.errors.full_messages
      render :edit
    end
  end

  protected

  def note_params
    params.require(:note).permit(:comment)
  end

  def authorize_user
    if !user_signed_in?
      flash[:notice] = "You do not have access to this page."
      redirect_to root_path
    end
  end
end
