require 'rails_helper'

RSpec.describe "Welcome Page" do 
    before(:each) do 
        visit root_path
    end

    describe "welcome page", :vcr do 
        it 'has a form to search for activities' do 
            
            expect(page).to have_content("Activity Finder")
            expect(page).to have_field(:num_participants)
            expect(page).to have_button("Find Activities")
        end 

        it "takes me to /activity after clicking num of participants" do 
            fill_in(:num_participants, with: 2)
            click_button "Find Activities"
            expect(current_path).to eq("/activity")
        end

        it "flashes an error message when no participants are entered" do
            fill_in(:num_participants, with: 0)
            click_button "Find Activities"

            expect(current_path).to eq(root_path)
            expect(page).to have_content("Incorrect Input")
        end

        it "flashes an error message when too many participants are input" do 
            fill_in(:num_participants, with: 6)
            click_button "Find Activities"

            expect(current_path).to eq(root_path)
            expect(page).to have_content("Incorrect Input")
        end
    end
end 