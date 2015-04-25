class Supervisors::SessionsController < ApplicationController
  def new
  end

  def create  
    supervisor = User.find_by_email params[:session][:email].downcase
    if supervisor && supervisor.authenticate(params[:session][:password]) && supervisor_required?(supervisor)
      log_in supervisor
      redirect_back_or supervisors_user_path(supervisor)
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end