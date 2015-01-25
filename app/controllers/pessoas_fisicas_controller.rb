class PessoasFisicasController < ApplicationController
  before_action :set_pessoa_fisica, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pessoas_fisicas = PessoaFisica.all
    respond_with(@pessoas_fisicas)
  end

  def show
    respond_with(@pessoa_fisica)
  end

  def new
    @pessoa_fisica = PessoaFisica.new
    respond_with(@pessoa_fisica)
  end

  def edit
  end

  def create
    @pessoa_fisica = PessoaFisica.new(pessoa_fisica_params)
    @pessoa_fisica.save
    respond_with(@pessoa_fisica)
  end

  def update
    @pessoa_fisica.update(pessoa_fisica_params)
    respond_with(@pessoa_fisica)
  end

  def destroy
    @pessoa_fisica.destroy
    respond_with(@pessoa_fisica)
  end

  private
    def set_pessoa_fisica
      @pessoa_fisica = PessoaFisica.find(params[:id])
    end

    def pessoa_fisica_params
      params.require(:pessoa_fisica).permit(:cpf, :rg, :filiacao, :estadoCivil, :nacionalidade, :nome, :telefone, :celular, :email, :dataNascimento, :endereco_id, endereco_attributes: [:cep, :rua_id, :complemento, :numero, :id]);
    end
end
