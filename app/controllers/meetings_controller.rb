class MeetingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_meeting, only: [:edit, :update, :show, :destory]
  
  def index
    # Accepts meetings from current use thats logged in
    @meetings = current_user.meetings.all
  end

  def show
  end

  def edit
  end

  def create
    @meeting = Meeting.new(meeting_params)
    @meeting.user_id = current_user.id
  end

  def update
  end

  def destroy
    @meeting.destroy
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
