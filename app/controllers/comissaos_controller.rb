class ComissaosController < ApplicationController
  before_action :set_comissao, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @comissaos = Comissao.all
    respond_with(@comissaos)
  end

  def show
    respond_with(@comissao)
  end

  def new
    @comissao = Comissao.new
    respond_with(@comissao)
  end

  def edit
  end

  def create
    @comissao = Comissao.new(comissao_params)
    @comissao.save
    respond_with(@comissao)
  end

  def update
    @comissao.update(comissao_params)
    respond_with(@comissao)
  end

  def destroy
    @comissao.destroy
    respond_with(@comissao)
  end

  private
    def set_comissao
      @comissao = Comissao.find(params[:id])
    end

    def comissao_params
      params.require(:comissao).permit(:vendaAluguel_id, :comissionado_id)
    end
end
