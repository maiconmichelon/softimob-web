class AlugueisController < ApplicationController
  before_action :set_aluguel, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @alugueis = Aluguel.all
    respond_with(@alugueis)
  end

  def show
    respond_with(@aluguel)
  end

  def new
    @aluguel = Aluguel.new
    respond_with(@aluguel)
  end

  def edit
  end

  def create
    @aluguel = Aluguel.new(aluguel_params)
    @aluguel.save
    respond_with(@aluguel)
  end

  def update
    @aluguel.update(aluguel_params)
    respond_with(@aluguel)
  end

  def destroy
    @aluguel.destroy
    respond_with(@aluguel)
  end

  private
    def set_aluguel
      @aluguel = Aluguel.find(params[:id])
    end

    def aluguel_params
      params.require(:aluguel).permit(:cliente_id, :dataVencimento, :indice_id, :resolvido, :dataFechamento)
    end
end
