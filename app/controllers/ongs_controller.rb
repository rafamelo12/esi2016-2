class OngsController < ApplicationController
  def show
    @ong = Ong.find(params[:id])
    render 'ongs/show'
  end
end