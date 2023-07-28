class ApplicationController < ActionController::API

  def not_found
    render json: { }, status: :not_found
  end

  def authorize_request
    header = request.headers['Authorization']
    header = header.split(' ').last if header
    begin
      @decoded = JsonWebToken.decode(header)
      @current_user = User.find(@decoded[:user_id])
    rescue ActiveRecord::RecordNotFound => e
      render json: { error: e }, status: :unauthorized
    rescue JWT::DecodeError => e
      render json: { error: e }, status: :unauthorized
    end
  end
end
