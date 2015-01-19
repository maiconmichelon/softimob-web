class ModeloContratosController < ApplicationController
  before_action :set_modelo_contrato, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @modelo_contratos = ModeloContrato.all
    respond_with(@modelo_contratos)
  end

  def show
    respond_with(@modelo_contrato)
  end

  def new
    @modelo_contrato = ModeloContrato.new
    respond_with(@modelo_contrato)
  end

  def edit
  end

  def create
    @modelo_contrato = ModeloContrato.new(modelo_contrato_params)
    @modelo_contrato.save
    respond_with(@modelo_contrato)
  end

  def update
    @modelo_contrato.update(modelo_contrato_params)
    respond_with(@modelo_contrato)
  end

  def destroy
    @modelo_contrato.destroy
    respond_with(@modelo_contrato)
  end

  private
    def set_modelo_contrato
      @modelo_contrato = ModeloContrato.find(params[:id])
    end

    def modelo_contrato_params
      params.require(:modelo_contrato).permit(:nome, :empresa_id, :ativo)
    end
end
