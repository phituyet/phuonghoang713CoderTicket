class TicketTypesController < ApplicationController
  def new
    @event = Event.find(params[:event_id])
    puts "event_id params: #{params[:event_id]}"
    @ticket_type = TicketType.new
  end

  def create
    @ticket_type = TicketType.create(ticket_type_params)
    if @ticket_type.save!
      flash[:success] = "Created a new event"
      redirect_to root_path
    else
      flash[:error] = "Could not create event"
      render 'new'
    end
  end
  def ticket_type_params
    params.require(:ticket_type).permit(:price, :name, :max_quantity)
  end
end
