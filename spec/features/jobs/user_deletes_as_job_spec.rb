require 'rails_helper'

describe "User deletes existing job" do
  scenario "a user can delete a job" do
    company = create(:company_with_job)
    first, second = company.jobs

    visit company_path(company)

    click_on "Delete"

    expect(page).to have_content "#{first.title} was successfully deleted!"
  end
end
