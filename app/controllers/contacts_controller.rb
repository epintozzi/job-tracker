class ContactsController < ApplicationController

  def create
    @company = Company.find(params[:company_id])
    @contact = @company.contacts.new(contact_params)
    if @contact.update(contact_params)
      redirect_to company_jobs_path(@company)
    else
      render company_jobs_path(@company)
    end

  end
  

  private

  def contact_params
    params.require(:contact).permit(:full_name, :position, :email, :company_id)
  end

end
