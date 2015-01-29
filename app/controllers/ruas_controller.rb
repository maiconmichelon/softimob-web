class RuasController < ApplicationController
  before_action :set_rua, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    @ruas = Rua.all
    respond_with(@ruas)
  end

  def show
    respond_with(@rua)
  end

  def new
    @rua = Rua.new
    respond_with(@rua)
  end

  def edit
  end

  def ruas_by_bairro
    @ruas = Rua.where bairro_id: params[:bairro_id]
    respond_with(@ruas)
  end

  def create
    @rua = Rua.new(rua_params)
    @rua.save
    respond_with(@rua)
  end

  def update
    @rua.update(rua_params)
    respond_with(@rua)
  end

  def destroy
    @rua.destroy
    respond_with(@rua)
  end

  private
    def set_rua
      @rua = Rua.find(params[:id])
    end

    def rua_params
      params.require(:rua).permit(:nome, :bairro_id)
    end
end
