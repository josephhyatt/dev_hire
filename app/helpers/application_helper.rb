module ApplicationHelper

  # Makes the time more visually pleasent
  def readable_time(time)
    time.strftime("%b %d, %I:%M%P")
  end

  # Checks to see if user is author of content
  def author_of(record)
    user_signed_in? && current_user.id == record.user_id
  end

  # Check if a user is an admin
  def admin?
    user_signed_in? && current_user.admin? 
  end
end
