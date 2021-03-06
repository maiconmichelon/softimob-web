class ImoveisController < ApplicationController
  before_action :set_imovel, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @imoveis = Imovel.all
    respond_with(@imoveis)
  end

  def show
    respond_with(@imovel)
  end

  def new
    @imovel = Imovel.new
    respond_with(@imovel, @empresa)
  end

  def edit
  end

  def create
    @imovel = Imovel.new(imovel_params)
    @imovel.save
    respond_with(@imovel)
  end

  def update
    @imovel.update(imovel_params)
    respond_with(@imovel)
  end

  def destroy
    @imovel.destroy
    respond_with(@imovel)
  end

  private
    def set_imovel
      @empresa = Empresa.find(params[:empresa_id])
      @imovel = @empresa.imoveis.find(params[:id])
    end

    def imovel_params
      params.require(:imovel).permit(:ativo, :metragem, :angariador_id, :proprietario_id,
        :tipoImovel_id, :observacoes, :endereco_id, :empresa_id, endereco_attributes: endereco_params)
    end
end
