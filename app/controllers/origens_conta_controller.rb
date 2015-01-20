class OrigensContaController < ApplicationController
  before_action :set_origem_contum, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @origens_conta = OrigemContum.all
    respond_with(@origens_conta)
  end

  def show
    respond_with(@origem_contum)
  end

  def new
    @origem_contum = OrigemContum.new
    respond_with(@origem_contum)
  end

  def edit
  end

  def create
    @origem_contum = OrigemContum.new(origem_contum_params)
    @origem_contum.save
    respond_with(@origem_contum)
  end

  def update
    @origem_contum.update(origem_contum_params)
    respond_with(@origem_contum)
  end

  def destroy
    @origem_contum.destroy
    respond_with(@origem_contum)
  end

  private
    def set_origem_contum
      @origem_contum = OrigemContum.find(params[:id])
    end

    def origem_contum_params
      params.require(:origem_contum).permit(:nome, :planoConta_id, :contaContraPartida_id, :ativo, :empresa_id)
    end
end
