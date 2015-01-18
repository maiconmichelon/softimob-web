class TipoAtivosController < ApplicationController
  before_action :set_tipo_ativo, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @tipo_ativos = TipoAtivo.all
    respond_with(@tipo_ativos)
  end

  def show
    respond_with(@tipo_ativo)
  end

  def new
    @tipo_ativo = TipoAtivo.new
    respond_with(@tipo_ativo)
  end

  def edit
  end

  def create
    @tipo_ativo = TipoAtivo.new(tipo_ativo_params)
    @tipo_ativo.save
    respond_with(@tipo_ativo)
  end

  def update
    @tipo_ativo.update(tipo_ativo_params)
    respond_with(@tipo_ativo)
  end

  def destroy
    @tipo_ativo.destroy
    respond_with(@tipo_ativo)
  end

  private
    def set_tipo_ativo
      @tipo_ativo = TipoAtivo.find(params[:id])
    end

    def tipo_ativo_params
      params.require(:tipo_ativo).permit(:nome, :ativo)
    end
end
