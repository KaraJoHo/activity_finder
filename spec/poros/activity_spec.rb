require "rails_helper"

RSpec.describe Activity do 
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
    @activity = Activity.new(attrs)
  end

  describe "activity" do 
    it "exists" do 
      expect(@activity).to be_a(Activity)
    end

    it "can set priciness" do 
      expect(@activity.set_priciness).to eq("$")
    end
  end
end