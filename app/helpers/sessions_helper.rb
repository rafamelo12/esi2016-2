module SessionsHelper
  def log_in(ong)
    session[:ong_id] = ong.id
  end

  def current_ong
    @current_ong ||= Ong.find_by(id: session[:ong_id])
  end

  def logged_in?
    !current_ong.nil?
  end

  def log_out
    session.delete(:ong_id)
    @current_ong = nil
  end
end
