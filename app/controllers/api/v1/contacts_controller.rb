class Api::V1::ContactsController < ApiController
  serialization_scope :current_user

  def index
    render json: Contact.where( :user => current_user)
  end

  def show
    render json: Contact.find(params[:id]), serializer: ContactShowSerializer
  end
end
