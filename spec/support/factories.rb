FactoryGirl.define do
  factory :company do
    sequence(:name) { |n| "Company #{n}"}
    city "Denver"

    factory :company_with_job do
      jobs {create_list(:job, 2)}
    end
  end

  factory :job do
    title
    description "Fun job"
    level_of_interest 5
  end

sequence(:title) { |n| "Job #{n}"}

end
