module ApplicationHelper
  def flashable?
    session[:flash].present? && (Time.now.to_i - session[:flash_stamp]) < 2
  end
end
