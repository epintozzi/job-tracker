require 'rails_helper'

describe "User sees all categories" do
  scenario "a users sees all the categories" do
    one, two = create_list(:category, 2)

    visit categories_path

    expect(page).to have_content(one.title)
    expect(page).to have_content(two.title)
  end
end
