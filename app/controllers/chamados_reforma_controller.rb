class ChamadosReformaController < ApplicationController
  before_action :set_chamado_reforma, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @chamados_reforma = ChamadoReforma.all
    respond_with(@chamados_reforma)
  end

  def show
    respond_with(@chamado_reforma)
  end

  def new
    @chamado_reforma = ChamadoReforma.new
    respond_with(@chamado_reforma)
  end

  def edit
  end

  def create
    @chamado_reforma = ChamadoReforma.new(chamado_reforma_params)
    @chamado_reforma.save
    respond_with(@chamado_reforma)
  end

  def update
    @chamado_reforma.update(chamado_reforma_params)
    respond_with(@chamado_reforma)
  end

  def destroy
    @chamado_reforma.destroy
    respond_with(@chamado_reforma)
  end

  private
    def set_chamado_reforma
      @chamado_reforma = ChamadoReforma.find(params[:id])
    end

    def chamado_reforma_params
      params.require(:chamado_reforma).permit(:aluguel_id, :data, :funcionario_id, :problema, :finalizacaoChamadoReforma_id)
    end
end
