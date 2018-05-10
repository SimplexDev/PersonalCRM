class ContactsController < ApplicationController

  before_action :authorize_user, except: [:index]

  def index
  end

  def show
  end

  def new
    @contact = Contact.new
  end

  def create
    binding.pry
    @contact = Contact.new(contact_params)
    @contact.user = current_user

    if @contact.save
      flash[:success] = 'Contact added successfully'
      @contact.save
      redirect_to @contact
    else
      @errors = @contact.errors.full_messages
      render :new
    end
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])

    if @contact.update(contact_params)
      flash[:success] = 'Contact updated successfully'
      @contact = @contact.update(contact_params)
      redirect_to contact_path
    else
      @errors = @contact.errors.full_messages
      render :edit
    end

  end

  def destroy
    contact = Contact.find(params[:id])
    notes = contact.notes
    contact.destroy
    notes.destroy_all
    redirect_to users_path
  end

  protected
  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :company, :past_company, :industry, :phone_number, :how_met, :last_contacted, :follow_up)
  end

  def authorize_user
    if !user_signed_in?
      flash[:notice] = "You do not have access to this page."
      redirect_to root_path
    end
  end

  def authorize_admin
    if !user_signed_in? || !current_user.admin?
      flash[:notice] = "You do not have access to this page."
      redirect_to root_path
    end
  end

end
