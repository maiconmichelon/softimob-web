class ImovelsController < ApplicationController
  before_action :set_imovel, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @imovels = Imovel.all
    respond_with(@imovels)
  end

  def show
    respond_with(@imovel)
  end

  def new
    @imovel = Imovel.new
    respond_with(@imovel)
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
      @imovel = Imovel.find(params[:id])
    end

    def imovel_params
      params.require(:imovel).permit(:ativo, :metragem, :funcionario_id, :cliente_id, :tipoImovel_id, :observacoes, :endereco_id, :empresa_id)
    end
end
