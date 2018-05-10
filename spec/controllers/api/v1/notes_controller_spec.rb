require "rails_helper"

# RSpec.describe Api::V1::NotesController, type: :controller do
#   let(:returned_json) { JSON.parse(response.body) }
#
#
#   describe "GET#index" do
#     describe "returns note data" do
#       it "first test" do
#         test_user = User.create!(email: "test@gmail.com", password: "password", password_confirmation: "password")
#         test_contact = Contact.create!(first_name: "Test name", last_name: "Test name", user: test_user)
#         test_note = Note.create!(comment: "Test description", contact: test_contact, user: test_user)
#
#         get :index
#
#         expect(response.status).to eq 200
#         expect(response.content_type).to eq("application/json")
#
#         expect(returned_json.first.keys).to eq ["id", "first_name", "last_name"]
#         expect(returned_json.first["id"]).to eq(test_note.id)
#       end
#
#     end
#   end
# end
