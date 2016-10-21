require 'rails_helper'

describe "User sees a specific job" do
  scenario "a user sees a job for a specific company" do
    company = Company.create(name: "ESPN", city: "LA")
    job = create(:job)
    job.company = company
    job.save

    visit company_job_path(company, job)

    expect(page).to have_content("ESPN")
    expect(page).to have_content(job.title)
    expect(page).to have_content(job.level_of_interest)
    expect(page).to have_content(job.category.title)
  end
end
