class TicketTypesController < ApplicationController
  before_action :current_event
  def new
    @ticket_type = TicketType.new
  end

  def create
    @ticket_type = @event.ticket_types.create(ticket_type_params)
    if @ticket_type.save!
      flash[:success] = "Created a new event"
      redirect_to root_path
    else
      flash[:error] = "Could not create event"
      render 'new'
    end
  end

  def current_event
    @event = Event.find(params[:event_id])
    puts "event_id params: #{params[:event_id]}"
  end
  private
  def ticket_type_params
    params.require(:ticket_type).permit(:price, :name, :max_quantity)
  end
end
