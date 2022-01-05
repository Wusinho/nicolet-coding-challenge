require 'rails_helper'

RSpec.describe 'Subscriber', type: :request do

  describe "POST /subscribers" do

    it "should create a subscription" do
      req_payload = {
        subscriber: {
          email: "heberlazo@gmail.com",
        }
      }
      # POST HTTP
      post "/subscribers", params: req_payload
      expect(response).to have_http_status(:found)
    end

  end
end
