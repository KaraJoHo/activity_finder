require "rails_helper"

RSpec.describe ActivityService do 
  describe "get_activity", :vcr do 
    it "gets the endpoint for the activity with participants" do 
      service = ActivityService.new 
      expect(service.get_activity(2)).to be_a(Faraday::Response)
    end

    it "is has info about an activity" do 
      service = ActivityService.new 
      response = service.get_activity(2)
      json = JSON.parse(response.body)
      expect(json).to be_a(Hash)
    end
  end
end