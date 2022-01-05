require 'rails_helper'

RSpec.describe Subscriber, type: :model do

  describe "validations" do
    it "validate presence of required fields" do
      should validate_presence_of(:email)
      should validate_presence_of(:preferences)
    end
  end
end
