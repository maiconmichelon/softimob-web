class ContratoPrestacaoServicosController < ApplicationController
  before_action :set_contrato_prestacao_servico, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @contrato_prestacao_servicos = ContratoPrestacaoServico.all
    respond_with(@contrato_prestacao_servicos)
  end

  def show
    respond_with(@contrato_prestacao_servico)
  end

  def new
    @contrato_prestacao_servico = ContratoPrestacaoServico.new
    respond_with(@contrato_prestacao_servico)
  end

  def edit
  end

  def create
    @contrato_prestacao_servico = ContratoPrestacaoServico.new(contrato_prestacao_servico_params)
    @contrato_prestacao_servico.save
    respond_with(@contrato_prestacao_servico)
  end

  def update
    @contrato_prestacao_servico.update(contrato_prestacao_servico_params)
    respond_with(@contrato_prestacao_servico)
  end

  def destroy
    @contrato_prestacao_servico.destroy
    respond_with(@contrato_prestacao_servico)
  end

  private
    def set_contrato_prestacao_servico
      @contrato_prestacao_servico = ContratoPrestacaoServico.find(params[:id])
    end

    def contrato_prestacao_servico_params
      params.require(:contrato_prestacao_servico).permit(:valorImovel, :valorImovel, :tipo, :imovel_id, :divulgar, :dataInicio, :dataVencimento, :funcionario_id, :cliente_id, :resolvido, :dataFechamento, :modeloContrato_id)
    end
end
