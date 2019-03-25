class DashboardController < ApplicationController
  def index
    if user_signed_in?
      @user = current_user
    else
      redirect_to new_user_session_url
    end

  end
end
