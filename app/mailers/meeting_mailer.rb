class MeetingMailer < ApplicationMailer
  helper :application
  default from: "notifications@web-hire.com"

  def meeting_scheduled
    @meeting = params[:meeting]
    @user = params[:user]

    mail(to: @user.email, subject: "New Session Confirmation")
  end

end