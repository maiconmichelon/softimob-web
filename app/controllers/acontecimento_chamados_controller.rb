class AcontecimentoChamadosController < ApplicationController
  before_action :set_acontecimento_chamado, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @acontecimento_chamados = AcontecimentoChamado.all
    respond_with(@acontecimento_chamados)
  end

  def show
    respond_with(@acontecimento_chamado)
  end

  def new
    @acontecimento_chamado = AcontecimentoChamado.new
    respond_with(@acontecimento_chamado)
  end

  def edit
  end

  def create
    @acontecimento_chamado = AcontecimentoChamado.new(acontecimento_chamado_params)
    @acontecimento_chamado.save
    respond_with(@acontecimento_chamado)
  end

  def update
    @acontecimento_chamado.update(acontecimento_chamado_params)
    respond_with(@acontecimento_chamado)
  end

  def destroy
    @acontecimento_chamado.destroy
    respond_with(@acontecimento_chamado)
  end

  private
    def set_acontecimento_chamado
      @acontecimento_chamado = AcontecimentoChamado.find(params[:id])
    end

    def acontecimento_chamado_params
      params.require(:acontecimento_chamado).permit(:data, :funcionario_id, :descricao)
    end
end
