class MovimentacoesContabeisController < ApplicationController
  before_action :set_movimentacao_contabil, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @movimentacoes_contabeis = MovimentacaoContabil.all
    respond_with(@movimentacoes_contabeis)
  end

  def show
    respond_with(@movimentacao_contabil)
  end

  def new
    @movimentacao_contabil = MovimentacaoContabil.new
    respond_with(@movimentacao_contabil)
  end

  def edit
  end

  def create
    @movimentacao_contabil = MovimentacaoContabil.new(movimentacao_contabil_params)
    @movimentacao_contabil.save
    respond_with(@movimentacao_contabil)
  end

  def update
    @movimentacao_contabil.update(movimentacao_contabil_params)
    respond_with(@movimentacao_contabil)
  end

  def destroy
    @movimentacao_contabil.destroy
    respond_with(@movimentacao_contabil)
  end

  private
    def set_movimentacao_contabil
      @movimentacao_contabil = MovimentacaoContabil.find(params[:id])
    end

    def movimentacao_contabil_params
      params.require(:movimentacao_contabil).permit(:valor, :valor, :data, :empresa_id)
    end
end
