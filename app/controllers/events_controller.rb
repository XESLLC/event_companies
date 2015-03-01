class EventsController < ApplicationController


  def create

    @event = Event.create(event_params)
    @event[:company_id] = params[:company_id]
    @event.save
    redirect_to edit_company_path(@event[:company_id])

  end

  def edit
    @event = Event.find(params[:id])
    @company = Company.find(params[:company_id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to edit_company_path(@event[:company_id])
  end

  private

  def event_params

  params.require(:event).permit(:name)

  end

end
