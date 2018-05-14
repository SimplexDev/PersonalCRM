class UsersController < ApplicationController
  before_action :authorize_admin

  def index
    @users = User.all { |e|  }
    @contacts = Contact.all.order(:id)
    @notes = Note.all.order(:id)
  end

  def destroy
    user = User.find(params[:id])

    if user != current_user
      if user.contacts
        contacts = user.contacts
        current_user.contacts = contacts
      end
      user.notes.destroy_all
      user.contacts.destroy_all
      user.destroy
    else
      flash[:notice] = "Admins can't delete own account"
    end

    redirect_to users_path
  end

  def authorize_admin
    if !user_signed_in? || !current_user.admin?
      flash[:notice] = "You do not have access to this page."
      redirect_to root_path
    end
  end

end
