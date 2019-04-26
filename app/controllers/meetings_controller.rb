class MeetingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_meeting, only: [:show, :edit, :update, :destory]
  before_action :must_be_admin, only: [:active_sessions]
  
    # Accepts meetings from current use thats logged in
    def index
      if current_user.admin?
        @meetings = Meeting.all
      else
        @meetings = current_user.meetings.where(user_id: current_user)
      end
    end

  def show
    @comment = Comment.new
  end

  def new
    @meeting = Meeting.new
  end

  def edit
  end

  def create
    @meeting = Meeting.new(meeting_params)
    @meeting.user_id = current_user.id
    if @meeting.save
      flash[:notice] = "Meeting was successfully created."
      redirect_to meeting_path(@meeting)
    else
      render 'new'
    end
  end

	def update
		if @meeting.update(meetingss_params)
			flash.keep[:notice] = "Meeting was successfully updated."
			redirect_to meeting_path(@meeting)
		else
			render 'edit'
		end
	end

  def destroy
    @meeting.destroy
    flash[:notice] = "Meeting was successfully cancelled and deleted."
    redirect_to meetings_path
  end

  def active_sessions
    @active_sessions = Meeting.where("end_time > ?", Time.now)
  end

  private
  
  # A callback to share common code (DRY)
  def set_meeting
    @meeting = Meeting.find(params[:id])
  end

  # Only allowing certain parameters through
  def meeting_params
    params.require(:meeting).permit(:name, :start_time, :end_time, :user_id)
  end

  def must_be_admin
    unless current_user.admin?
      redirect_to meetings_path, alert: "You don't have access to this page"
    end
  end
end
