class EventsController < ApplicationController
  def index
    if params[:search]
      @events = Event.search(params[:search]).order('created_at DESC')
    else
      @events = Event.all.order('created_at DESC')
    end
  end

  def show
    @event = Event.find(params[:id])
  end
  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params)
    @event.user_id = current_user.id
    if @event.save!
      flash[:success] = "Created a new event"
      redirect_to root_path
    else
      flash[:error] = "Could not create event"
      render 'new'
    end
  end

  def do_publish_event
    @event = Event.find(params[:id])
    @event.published_at = DateTime.now
    @event.save!
    redirect_to root_path
  end
  private
  def event_params
    params.require(:event).permit(:name, :starts_at, :ends_at, :hero_image_url, :extended_html_description, :venue_id, :category_id)
  end
end
