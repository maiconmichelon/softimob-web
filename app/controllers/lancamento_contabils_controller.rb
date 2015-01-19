class LancamentoContabilsController < ApplicationController
  before_action :set_lancamento_contabil, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @lancamento_contabils = LancamentoContabil.all
    respond_with(@lancamento_contabils)
  end

  def show
    respond_with(@lancamento_contabil)
  end

  def new
    @lancamento_contabil = LancamentoContabil.new
    respond_with(@lancamento_contabil)
  end

  def edit
  end

  def create
    @lancamento_contabil = LancamentoContabil.new(lancamento_contabil_params)
    @lancamento_contabil.save
    respond_with(@lancamento_contabil)
  end

  def update
    @lancamento_contabil.update(lancamento_contabil_params)
    respond_with(@lancamento_contabil)
  end

  def destroy
    @lancamento_contabil.destroy
    respond_with(@lancamento_contabil)
  end

  private
    def set_lancamento_contabil
      @lancamento_contabil = LancamentoContabil.find(params[:id])
    end

    def lancamento_contabil_params
      params.require(:lancamento_contabil).permit(:tipo, :historico, :valor, :valor, :planoConta_id, :movimentacaoContabil_id)
    end
end
