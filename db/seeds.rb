Company.destroy_all
Job.destroy_all
Category.destroy_all

COMPANIES = ["ESPN", "Aetna", "United Airlines", "Denver Public Schools", "Shopify", "Starbucks", "Pivotal Labs", "Captain U"]
JOBS = ["Engineering", "Development", "Dev Ops", "Quality Assurance", "Teacher", "Product Manager", "Consultant", "Community Manager"]
CITIES = ["Seattle", "Denver", "Portland", "Indianapolis", "Madison", "Orlando", "San Diego", "Austin", "Las Vegas", "Little Rock", "Boise", "Eugene", "Oakland"]

category = Category.create!(title: "Wahoo")

COMPANIES.each do |name|
  company = Company.create!(name: name, city: CITIES.sample)
  10.times do |num|
    company.jobs.create!(category: category, title: JOBS.sample, description: "What a great position!", level_of_interest: num + rand(100))
  end
end
