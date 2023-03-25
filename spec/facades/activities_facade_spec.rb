require "rails_helper"

RSpec.describe "ActivitesFacade" do 
  before(:each) do 
    attrs = {
              "activity": "Organize your basement",
              "type": "busywork",
              "participants": 1,
              "price": 0,
              "link": "",
              "key": "8203595",
              "accessibility": 0.9
            }
  end

  describe "activity with participants", :vcr do 
    it "can return an activity object" do 
      facade = ActivitiesFacade.new 

      expect(facade.activity_with_participants(2)).to be_a(Activity)
    end
  end
end