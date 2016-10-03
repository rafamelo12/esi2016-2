class UsuariosController < ApplicationController
  def perfil
    @ong = Ong.find(params[:id])
  end
end
