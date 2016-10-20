require 'rails_helper'

describe "User creates a new category" do
  scenario "a user can create a new company" do

    visit new_category_path

    fill_in "category[title]", with: "Web Development"
    click_on "Create Category"

    expect(page).to have_content "Web Development"
    expect(current_path).to eq(category_path(Category.last.id))
  end
end
