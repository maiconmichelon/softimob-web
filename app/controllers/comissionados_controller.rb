class ComissionadosController < ApplicationController
  before_action :set_comissionado, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @comissionados = Comissionado.all
    respond_with(@comissionados)
  end

  def show
    respond_with(@comissionado)
  end

  def new
    @comissionado = Comissionado.new
    respond_with(@comissionado)
  end

  def edit
  end

  def create
    @comissionado = Comissionado.new(comissionado_params)
    @comissionado.save
    respond_with(@comissionado)
  end

  def update
    @comissionado.update(comissionado_params)
    respond_with(@comissionado)
  end

  def destroy
    @comissionado.destroy
    respond_with(@comissionado)
  end

  private
    def set_comissionado
      @comissionado = Comissionado.find(params[:id])
    end

    def comissionado_params
      params.require(:comissionado).permit(:nome, :telefone, :celular, :email, :dataNascimento, :ativo, :endereco_id, :empresa_id)
    end
end
