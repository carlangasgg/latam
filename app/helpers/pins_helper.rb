module PinsHelper
  def like?(pin)
  	Like.find_by(user_id: current_user.id, pin_id: pin).present?
  end
end
