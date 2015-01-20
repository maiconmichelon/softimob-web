class IndicesMesController < ApplicationController
  before_action :set_indice_me, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @indices_mes = IndiceMes.all
    respond_with(@indices_mes)
  end

  def show
    respond_with(@indice_me)
  end

  def new
    @indice_me = IndiceMe.new
    respond_with(@indice_me)
  end

  def edit
  end

  def create
    @indice_me = IndiceMe.new(indice_me_params)
    @indice_me.save
    respond_with(@indice_me)
  end

  def update
    @indice_me.update(indice_me_params)
    respond_with(@indice_me)
  end

  def destroy
    @indice_me.destroy
    respond_with(@indice_me)
  end

  private
    def set_indice_me
      @indice_me = IndiceMe.find(params[:id])
    end

    def indice_me_params
      params.require(:indice_me).permit(:indice_id, :data, :porcentagem, :porcentagem)
    end
end
