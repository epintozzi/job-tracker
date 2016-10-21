require 'rails_helper'

describe "User can leave comment on job" do
  scenario "a user can leave a comment a job's page" do
    company = create(:company_with_job)
    job, _ = company.jobs

    visit job_path(job)

    fill_in "comment[content]", with: "This is a comment."
    click_on "Create Comment"

    expect(current_path).to eq("/companies/#{company.id}/jobs/#{job.id}")
    expect(page).to have_content("This is a comment.")
  end

  scenario "a user sees comments newest to oldest" do
    job = create(:job)
    comment_1 = Comment.create(content: "first comment", job_id: job.id)
    comment_2 = Comment.create(content: "second comment", job_id: job.id)

    visit job_path(job)

    expect(page).to have_content("first comment")
    expect(page).to have_content("second comment")

    # within "div.comment:nth-child(1)" do
    #   expect(page).to have_content("second comment")
    # end
  end
end
