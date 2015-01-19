class PropostaController < ApplicationController
  before_action :set_propostum, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @proposta = Propostum.all
    respond_with(@proposta)
  end

  def show
    respond_with(@propostum)
  end

  def new
    @propostum = Propostum.new
    respond_with(@propostum)
  end

  def edit
  end

  def create
    @propostum = Propostum.new(propostum_params)
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
    def set_propostum
      @propostum = Propostum.find(params[:id])
    end

    def propostum_params
      params.require(:propostum).permit(:data, :dataFechamento, :cliente_id, :funcionario_id, :valor, :valor, :observacoes, :status, :proposta_id, :tipoContraProposta, :imovel_id)
    end
end
