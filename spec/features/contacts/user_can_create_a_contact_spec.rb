require 'rails_helper'

describe "User can create a contact person" do
  scenario "a user can create a contact person on a copmany" do
    company = create(:company)

    visit company_path(company)

    fill_in "contact[full_name]", with: "Erin Pintozzi"
    fill_in "contact[position]", with: "Student"
    fill_in "contact[email]", with: "erin@pintozzi.com"
    click_on "Create Contact"

    expect(page).to have_content("Erin Pintozzi")
    expect(page).to have_content("Student")
    expect(page).to have_content("erin@pintozzi.com")
  end
end
