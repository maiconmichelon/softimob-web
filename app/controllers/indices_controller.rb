class IndicesController < ApplicationController
  before_action :set_index, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @indices = Indice.all
    respond_with(@indices)
  end

  def show
    respond_with(@index)
  end

  def new
    @index = Indice.new
    respond_with(@index)
  end

  def edit
  end

  def create
    @index = Indice.new(indice_params)
    @index.save
    respond_with(@index)
  end

  def update
    @index.update(indice_params)
    respond_with(@index)
  end

  def destroy
    @index.destroy
    respond_with(@index)
  end

  private
    def set_index
      @index = Indice.find(params[:id])
    end

    def index_params
      params.require(:index).permit(:nome, :ativo)
    end
end
