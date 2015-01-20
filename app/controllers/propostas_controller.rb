class PropostasController < ApplicationController
  before_action :set_proposta, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @propostas = Proposta.all
    respond_with(@propostas)
  end

  def show
    respond_with(@propostum)
  end

  def new
    @propostum = Proposta.new
    respond_with(@propostum)
  end

  def edit
  end

  def create
    @propostum = Proposta.new(propostum_params)
    @propostum.save
    respond_with(@propostum)
  end

  def update
    @propostum.update(propostum_params)
    respond_with(@propostum)
  end

  def destroy
    @propostum.destroy
    respond_with(@propostum)
  end

  private
    def set_proposta
      @propostum = Proposta.find(params[:id])
    end

    def proposta_params
      params.require(:propostum).permit(:data, :dataFechamento, :cliente_id, :funcionario_id, :valor, :valor, :observacoes, :status, :proposta_id, :tipoContraProposta, :imovel_id)
    end
end
