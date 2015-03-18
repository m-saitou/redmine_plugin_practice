class EventsController < ApplicationController
  unloadable

  menu_item :practice
  
  before_filter :find_project, :authorize

  def index
    @events = Event.find(:all, :conditions => ["project_id = #{@project.id} "])
  end

  def show
  end

  def new
    @event = Event.new
    @event.event_values.build
  end

  def create
    @event = Event.new params[:event]
    @event.project_id = @project.id
    
    #@event = Event.find(params[:event_id]).subevent.build(params[:subevent])
    
    if @event.valid?
      if @event.save
        flash[:notice] = l(:notice_successful_create)
        redirect_to project_event_path(@project, @event.id)
      end
    else
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
  def find_project
    @project = Project.find(params[:project_id])
  rescue ActiveRecord::RecordNotFound
    render_404
  end
  
  def event_parameters
    params.require(:event).permit(
        :subject,
        :description,
        event_values_attributes: [:id, :field_id, :value, :_destroy]
      )
  end 
end
