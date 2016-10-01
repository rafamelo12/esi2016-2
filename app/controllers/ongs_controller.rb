class OngsController < ApplicationController
  def show
    @ong = Ong.find(params[:id])
    # debugger
  end

  def new
    @ong = Ong.new
  end

  def create
    @ong = Ong.new(ong_params)
    if @ong.save
      log_in @ong
      flash[:success] = "Bem-vindo ao Ajudando a Ajudar!"
      redirect_to @ong
    else
      render 'new'
    end
  end

  private

  
    def ong_params
      params.require(:ong).permit(:nome, :email, :password, :password_confirmation,
                                  :rua, :bairro, :cidade, :estado, :cep, :telefone)
    end
end