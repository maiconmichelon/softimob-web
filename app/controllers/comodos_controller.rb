class ComodosController < ApplicationController
  before_action :set_comodo, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @comodos = Comodo.all
    respond_with(@comodos)
  end

  def show
    respond_with(@comodo)
  end

  def new
    @comodo = Comodo.new
    respond_with(@comodo)
  end

  def edit
  end

  def create
    @comodo = Comodo.new(comodo_params)
    @comodo.save
    respond_with(@comodo)
  end

  def update
    @comodo.update(comodo_params)
    respond_with(@comodo)
  end

  def destroy
    @comodo.destroy
    respond_with(@comodo)
  end

  private
    def set_comodo
      @comodo = Comodo.find(params[:id])
    end

    def comodo_params
      params.require(:comodo).permit(:tipoComodo_id, :quantidade, :descricao, :imovel_id)
    end
end
