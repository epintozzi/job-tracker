require 'rails_helper'

describe "User sees all jobs on category" do
  scenario "a user can see all jobs for a specific category" do
    company = Company.create(name: "ESPN", city: "LA")
    category = Category.create(title: "Internet")
    company.jobs.create(title: "Developer", level_of_interest: 90, category: category)

    visit category_path(category)

    expect(page).to have_content("Internet")
    expect(page).to have_content("Developer")
  end
end
