class PlanosContaController < ApplicationController
  before_action :set_plano_contum, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @planos_conta = PlanoContum.all
    respond_with(@planos_conta)
  end

  def show
    respond_with(@plano_contum)
  end

  def new
    @plano_contum = PlanoContum.new
    respond_with(@plano_contum)
  end

  def edit
  end

  def create
    @plano_contum = PlanoContum.new(plano_contum_params)
    @plano_contum.save
    respond_with(@plano_contum)
  end

  def update
    @plano_contum.update(plano_contum_params)
    respond_with(@plano_contum)
  end

  def destroy
    @plano_contum.destroy
    respond_with(@plano_contum)
  end

  private
    def set_plano_contum
      @plano_contum = PlanoContum.find(params[:id])
    end

    def plano_contum_params
      params.require(:plano_contum).permit(:codigo, :nome, :tipo, :ativo, :empresa_id)
    end
end
