FactoryGirl.define do
  factory :company do
    sequence(:name) { |n| "Company #{n}"}
    city "Denver"

    factory :company_with_job do
      jobs {create_list(:job, 1)}
    end
  end

  factory :job do
    title
    description "Fun job"
    level_of_interest 5
    category {create(:category)}
  end

  sequence(:title) { |n| "Job/Category #{n}"}

  factory :category do
    title
  end

end
