class CompaniesController < ApplicationController

  def index

    @companies = Company.all

  end

  def new

    @company = Company.new


  end

  def create

    @company = Company.create(company_params)
    @company.save
    redirect_to companies_path

  end

  def edit

    @company = Company.find(params[:id])
    @event = @company.events.new
    @event_all = @company.events.all

  end


  def update

    @company = Company.find(params[:id])
    @company.update(company_params)
    redirect_to edit_company_path(@company[:id])

  end

  def destroy

    @company = Company.find(params[:id])
    @company.destroy
    redirect_to companies_path

  end


  private

  def company_params

  params.require(:company).permit(:name)

  end

end
