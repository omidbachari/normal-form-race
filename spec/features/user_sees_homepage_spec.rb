require 'rails_helper'


feature "User sees homepage", %(
  As a user
  I want to navigate to a home page and see a form and instructions
  So that I know what the purpose of the site is

  #### Acceptance Criteria

  * [] I see static instructions
  * [] I see a form
  ) do

  scenario "user sees introductory form and instructions" do
    visit root_path

    expect(page).to have_content "Welcome to Normal Form Race - Video Game Consoles as Data"

    click_on "New Game Console"

    fill_in "Manufacturer", with: "Sony"
    click_on "Submit"

    expect(page).to have_content "Thank you for submitting game console data."


  end
end
