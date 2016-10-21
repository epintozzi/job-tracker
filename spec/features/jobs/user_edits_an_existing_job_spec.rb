require 'rails_helper'

describe "User updates an existing job" do
  scenario "a user can update a job" do
    company = create(:company_with_job)
    job = company.jobs

    new_title = "New Title"
    new_description = "This looks fun"
    new_interest = 60

    visit company_path(company)
    click_on "Edit"
    fill_in "job[title]", with: new_title
    fill_in "job[description]", with: new_description
    fill_in "job[level_of_interest]", with: new_interest
    click_on "Update Job"

    expect(page).to have_content new_title
    expect(page).to have_content new_description
    expect(page).to have_content new_interest
    expect(page).to_not have_content job.last.title
  end
end
