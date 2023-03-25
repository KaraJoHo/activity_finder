require "rails_helper"

RSpec.describe "Activity Index Page" do 
  describe "activity show page", :vcr do 
    it "clicks num of participants then shows details for the activity" do 
      visit root_path 

      fill_in(:num_participants, with: 2)
      click_button "Find Activities"
      expect(current_path).to eq("/activity")

      expect(page).to have_content("Description: ")
      expect(page).to have_content("Number of Participants: 2")
      expect(page).to have_content("Priciness: ")
    end
  end
end