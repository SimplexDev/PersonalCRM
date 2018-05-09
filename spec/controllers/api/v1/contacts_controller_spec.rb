require 'spec_helper'
require "rails_helper"
require 'devise'

RSpec.describe Api::V1::ContactsController, type: :controller do

  test_user = User.create!(email: "test@gmail.com", password: "password", password_confirmation: "password")
  let!(:test_contact1) { Contact.create!(first_name: "Test name1",last_name: "Test name1", user: test_user)}
  let!(:test_contact2) { Contact.create!(first_name: "Test name1",last_name: "Test name1", user: test_user)}
  let!(:test_contact3) { Contact.create!(first_name: "Test name1",last_name: "Test name1", user: test_user)}

  describe "GET#index" do
    it "should return a list of all the contacts" do
      get :index
      returned_json = JSON.parse(response.body)
    end

    it "should return a list of all the spots ordered by date" do
      get :index
      returned_json = JSON.parse(response.body)

      expect(response.status).to eq 200
      expect(response.content_type).to eq("application/json")

      expect(returned_json.length).to eq 0
      # expect(returned_json[0]["first_name"]).to eq "Test name1"
      # expect(returned_json[1]["first_name"]).to eq "Test name2"
      # expect(returned_json[2]["first_name"]).to eq "Test name3"
      # expect(returned_json[0]["last_name"]).to eq "Test name1"
      # expect(returned_json[1]["last_name"]).to eq "Test name2"
      # expect(returned_json[2]["last_name"]).to eq "Test name3"
    end
  end
end
