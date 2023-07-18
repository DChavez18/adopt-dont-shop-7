require "rails_helper"

RSpec.describe ApplicationPet, type: :model do
  describe "relationships" do
    it {should belong_to(:pet)}
    it {should belong_to(:application)}
  end

  describe "#set_default_status" do
    it "sets all application_pets statuses to 'Pending'" do
      application_pet = ApplicationPet.new
      application_pet.set_default_status
      expect(application_pet.status).to eq("pending")
    end
  end
end