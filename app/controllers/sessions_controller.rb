class SessionsController < ApplicationController
  def new
  end

  def create
    ong = Ong.find_by(email: params[:session][:email].downcase)
    if ong && ong.authenticate(params[:session][:password])
      log_in ong
      redirect_to ong
    else
      flash.now[:danger] = 'Email ou senha inválidos!'
      render 'new'
    end
  end

  def destroy
  end
end