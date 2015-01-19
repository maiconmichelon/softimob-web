class TipoImovelTipoComodosController < ApplicationController
  before_action :set_tipo_imovel_tipo_comodo, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @tipo_imovel_tipo_comodos = TipoImovelTipoComodo.all
    respond_with(@tipo_imovel_tipo_comodos)
  end

  def show
    respond_with(@tipo_imovel_tipo_comodo)
  end

  def new
    @tipo_imovel_tipo_comodo = TipoImovelTipoComodo.new
    respond_with(@tipo_imovel_tipo_comodo)
  end

  def edit
  end

  def create
    @tipo_imovel_tipo_comodo = TipoImovelTipoComodo.new(tipo_imovel_tipo_comodo_params)
    @tipo_imovel_tipo_comodo.save
    respond_with(@tipo_imovel_tipo_comodo)
  end

  def update
    @tipo_imovel_tipo_comodo.update(tipo_imovel_tipo_comodo_params)
    respond_with(@tipo_imovel_tipo_comodo)
  end

  def destroy
    @tipo_imovel_tipo_comodo.destroy
    respond_with(@tipo_imovel_tipo_comodo)
  end

  private
    def set_tipo_imovel_tipo_comodo
      @tipo_imovel_tipo_comodo = TipoImovelTipoComodo.find(params[:id])
    end

    def tipo_imovel_tipo_comodo_params
      params.require(:tipo_imovel_tipo_comodo).permit(:tipoImovel_id, :tipoComodo_id, :preSelecionado)
    end
end
