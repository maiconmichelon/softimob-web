class ContaPagarRecebersController < ApplicationController
  before_action :set_conta_pagar_receber, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @conta_pagar_recebers = ContaPagarReceber.all
    respond_with(@conta_pagar_recebers)
  end

  def show
    respond_with(@conta_pagar_receber)
  end

  def new
    @conta_pagar_receber = ContaPagarReceber.new
    respond_with(@conta_pagar_receber)
  end

  def edit
  end

  def create
    @conta_pagar_receber = ContaPagarReceber.new(conta_pagar_receber_params)
    @conta_pagar_receber.save
    respond_with(@conta_pagar_receber)
  end

  def update
    @conta_pagar_receber.update(conta_pagar_receber_params)
    respond_with(@conta_pagar_receber)
  end

  def destroy
    @conta_pagar_receber.destroy
    respond_with(@conta_pagar_receber)
  end

  private
    def set_conta_pagar_receber
      @conta_pagar_receber = ContaPagarReceber.find(params[:id])
    end

    def conta_pagar_receber_params
      params.require(:conta_pagar_receber).permit(:valor, :valor, :valorJurosDesconto, :valorJurosDesconto, :dataConta, :dataVencimento, :dataPagamento, :OrigemConta_id, :tipo, :movimentacaoContabil_id, :observacoes)
    end
end
