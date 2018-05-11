class ContactSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :first_name, :last_name, :full_name, :email, :company, :past_company, :industry, :phone_number, :how_met, :last_contacted, :follow_up, :location, :family_details, :birthday

  belongs_to :user
end
