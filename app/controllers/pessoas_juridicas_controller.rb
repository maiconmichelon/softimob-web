class PessoasJuridicasController < ApplicationController
  before_action :set_pessoa_juridica, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pessoas_juridicas = PessoaJuridica.all
    respond_with(@pessoas_juridicas)
  end

  def show
    respond_with(@pessoa_juridica)
  end

  def new
    @pessoa_juridica = PessoaJuridica.new
    respond_with(@pessoa_juridica)
  end

  def edit
  end

  def create
    @pessoa_juridica = PessoaJuridica.new(pessoa_juridica_params)
    @pessoa_juridica.save
    respond_with(@pessoa_juridica)
  end

  def update
    @pessoa_juridica.update(pessoa_juridica_params)
    respond_with(@pessoa_juridica)
  end

  def destroy
    @pessoa_juridica.destroy
    respond_with(@pessoa_juridica)
  end

  private
    def set_pessoa_juridica
      @pessoa_juridica = PessoaJuridica.find(params[:id])
    end

    def pessoa_juridica_params
      params.require(:pessoa_juridica).permit(:cnpj, :inscricaoEstadual, :pessoaFisica_id)
    end
end
