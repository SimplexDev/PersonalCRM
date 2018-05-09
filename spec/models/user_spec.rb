require 'rails_helper'

describe User do
  it "should have many contacts" do
    t = User.reflect_on_association(:contacts)
    expect(t.macro).to eq(:has_many)
  end

  it "should have many notes" do
    t = User.reflect_on_association(:notes)
    expect(t.macro).to eq(:has_many)
  end
end
