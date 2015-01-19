class FinalizacaoChamadoReformasController < ApplicationController
  before_action :set_finalizacao_chamado_reforma, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @finalizacao_chamado_reformas = FinalizacaoChamadoReforma.all
    respond_with(@finalizacao_chamado_reformas)
  end

  def show
    respond_with(@finalizacao_chamado_reforma)
  end

  def new
    @finalizacao_chamado_reforma = FinalizacaoChamadoReforma.new
    respond_with(@finalizacao_chamado_reforma)
  end

  def edit
  end

  def create
    @finalizacao_chamado_reforma = FinalizacaoChamadoReforma.new(finalizacao_chamado_reforma_params)
    @finalizacao_chamado_reforma.save
    respond_with(@finalizacao_chamado_reforma)
  end

  def update
    @finalizacao_chamado_reforma.update(finalizacao_chamado_reforma_params)
    respond_with(@finalizacao_chamado_reforma)
  end

  def destroy
    @finalizacao_chamado_reforma.destroy
    respond_with(@finalizacao_chamado_reforma)
  end

  private
    def set_finalizacao_chamado_reforma
      @finalizacao_chamado_reforma = FinalizacaoChamadoReforma.find(params[:id])
    end

    def finalizacao_chamado_reforma_params
      params.require(:finalizacao_chamado_reforma).permit(:data, :funcionario_id, :descricaoConclusao, :status)
    end
end
