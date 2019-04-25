class CommentsController < ApplicationController
  before_action :authenticate_user! 
  before_action :set_comment, only: [:edit, :update, :show, :destroy]
  before_action :set_meeting

  def new
    @comment = Comment.new
  end

  def create
    @comment = @meeting.comments.create(params[:comment].permit(:reply, :meeting_id))
    @comment.user_id = current_user.id
    if @comment.save
      flash[:notice] = "Meeting was successfully created."
      redirect_to meeting_path(@meeting)
    else
      render 'show'
    end
  end

  def destroy
    @comment = @meeting.comments.find(params[:id])
    @comment.destroy
    redirect_to meeting_path(@meeting)
  end

  private
  # Find meeting by params meeting id
  def set_meeting
    @meeting = Meeting.find(params[:meeting_id])
  end

  # Finding comment by params comments id
  def set_comment
    @comment = Comment.find(params[:id])
  end

  # Permitting parameters
  def comment_params
    params.require(:comment).permit(:reply)
  end
end