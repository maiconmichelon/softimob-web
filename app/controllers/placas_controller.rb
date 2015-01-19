class PlacasController < ApplicationController
  before_action :set_placa, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @placas = Placa.all
    respond_with(@placas)
  end

  def show
    respond_with(@placa)
  end

  def new
    @placa = Placa.new
    respond_with(@placa)
  end

  def edit
  end

  def create
    @placa = Placa.new(placa_params)
    @placa.save
    respond_with(@placa)
  end

  def update
    @placa.update(placa_params)
    respond_with(@placa)
  end

  def destroy
    @placa.destroy
    respond_with(@placa)
  end

  private
    def set_placa
      @placa = Placa.find(params[:id])
    end

    def placa_params
      params.require(:placa).permit(:numero, :funcionario_id, :empresa_id, :imovel_id)
    end
end
