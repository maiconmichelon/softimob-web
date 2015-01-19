class ChavesController < ApplicationController
  before_action :set_chafe, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @chaves = Chave.all
    respond_with(@chaves)
  end

  def show
    respond_with(@chafe)
  end

  def new
    @chafe = Chave.new
    respond_with(@chafe)
  end

  def edit
  end

  def create
    @chafe = Chave.new(chave_params)
    @chafe.save
    respond_with(@chafe)
  end

  def update
    @chafe.update(chave_params)
    respond_with(@chafe)
  end

  def destroy
    @chafe.destroy
    respond_with(@chafe)
  end

  private
    def set_chafe
      @chafe = Chave.find(params[:id])
    end

    def chafe_params
      params.require(:chafe).permit(:numero, :imovel_id, :localizacao)
    end
end
