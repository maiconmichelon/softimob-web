class TiposImovelController < ApplicationController
  before_action :set_tipo_imovel, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @tipos_imovel = TipoImovel.all
    respond_with(@tipos_imovel)
  end

  def show
    respond_with(@tipo_imovel)
  end

  def new
    @tipo_imovel = TipoImovel.new
    respond_with(@tipo_imovel)
  end

  def edit
  end

  def create
    @tipo_imovel = TipoImovel.new(tipo_imovel_params)
    @tipo_imovel.save
    respond_with(@tipo_imovel)
  end

  def update
    @tipo_imovel.update(tipo_imovel_params)
    respond_with(@tipo_imovel)
  end

  def destroy
    @tipo_imovel.destroy
    respond_with(@tipo_imovel)
  end

  private
    def set_tipo_imovel
      @tipo_imovel = TipoImovel.find(params[:id])
    end

    def tipo_imovel_params
      params.require(:tipo_imovel).permit(:nome, :ativo)
    end
end
