class TipoComodosController < ApplicationController
  before_action :set_tipo_comodo, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @tipo_comodos = TipoComodo.all
    respond_with(@tipo_comodos)
  end

  def show
    respond_with(@tipo_comodo)
  end

  def new
    @tipo_comodo = TipoComodo.new
    respond_with(@tipo_comodo)
  end

  def edit
  end

  def create
    @tipo_comodo = TipoComodo.new(tipo_comodo_params)
    @tipo_comodo.save
    respond_with(@tipo_comodo)
  end

  def update
    @tipo_comodo.update(tipo_comodo_params)
    respond_with(@tipo_comodo)
  end

  def destroy
    @tipo_comodo.destroy
    respond_with(@tipo_comodo)
  end

  private
    def set_tipo_comodo
      @tipo_comodo = TipoComodo.find(params[:id])
    end

    def tipo_comodo_params
      params.require(:tipo_comodo).permit(:nome, :ativo, :empresa_id)
    end
end
