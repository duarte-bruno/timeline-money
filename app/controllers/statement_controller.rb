class StatementController < ApplicationController
  before_action :authorize_request

  def index
    @statement = Entry.joins(:account).where(accounts: { user_id: @current_user.id })

    render json: @statement
  end
end
