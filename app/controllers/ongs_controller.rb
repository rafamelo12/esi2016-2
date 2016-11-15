class OngsController < ApplicationController
  
  def show
    @ong = Ong.find(params[:id])
    render 'ongs/show'
  end

  def new
    @ong = Ong.new
    render 'ongs/new'
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

  def index
    @ongs = Ong.where('lower(nome) LIKE lower(?) OR lower(interesses) LIKE lower(?)', "%#{params[:user_search]}%", "%#{params[:user_search]}%").order(:nome)
    render 'search'
  end

  def edit
    @current_ong = current_ong
    if @current_ong.id.to_s == params[:id]
      @is_valid = true
    else
      @is_valid = false
    end
    render 'edit'
  end

  private

      def ong_params
        params.require(:ong).permit(:nome, :email, :password, :password_confirmation,
                                    :rua, :bairro, :cidade, :estado, :cep, :telefone,
                                    :interesses, :sobre)
      end
end