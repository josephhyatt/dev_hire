class MeetingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_meeting, only: [:show, :edit, :update, :destory]
  
  def index
    # Accepts meetings from current use thats logged in
    @meetings = current_user.meetings.all
  end

  def show
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
      render 'show'
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

  private
  
  # A callback to share common code (DRY)
  def set_meeting
    @meeting = Meeting.find(params[:id])
  end

  # Only allowing certain parameters through
  def meeting_params
    params.require(:meeting).permit(:name, :start_time, :end_time, :user_id)
  end

end
