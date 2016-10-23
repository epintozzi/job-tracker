class DashboardController < ApplicationController

  def index
    @cities = Company.all.group(:city).count
    @interest = Job.all.group(:level_of_interest).count
    @average_interest = Job.group(:company_id).average(:level_of_interest).sort_by {|k,v| v}.reverse[0..2]
  end

end
