class MunicipiosController < ApplicationController
  before_action :set_municipio, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    @municipios = Municipio.all
    respond_with(@municipios)
  end

  def show
    respond_with(@municipio)
  end

  def new
    @municipio = Municipio.new
    respond_with(@municipio)
  end

  def municipios_by_estado
    @municipios = Municipio.where estado_id: params[:estado_id]
    respond_with(@municipios)
  end

  def edit
  end

  def create
    @municipio = Municipio.new(municipio_params)
    @municipio.save
    respond_with(@municipio)
  end

  def update
    @municipio.update(municipio_params)
    respond_with(@municipio)
  end

  def destroy
    @municipio.destroy
    respond_with(@municipio)
  end

  private
    def set_municipio
      @municipio = Municipio.find(params[:id])
    end

    def municipio_params
      params.require(:municipio).permit(:nome, :estado_id)
    end
end
