require 'rails_helper'

describe "User can leave comment on job" do
  scenario "a user can leave a comment a job's page" do
    company = create(:company_with_job)
    job = company.jobs

    visit company_job_path(company, job)

    fill_in "comment[content]", with: "This is a comment."
    click_on "Create Comment"

    expect(current_path).to eq("/companies/#{company.id}/jobs/#{job.last.id}")
    expect(page).to have_content("This is a comment.")
  end
end
