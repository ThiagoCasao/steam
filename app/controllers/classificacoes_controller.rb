class ClassificacoesController < ApplicationController
  before_action :set_classificacao, only: [:show, :edit, :update, :destroy]

  # GET /classificacoes
  # GET /classificacoes.json
  def index
    @classificacoes = Classificacao.all
  end

  # GET /classificacoes/1
  # GET /classificacoes/1.json
  def show
  end

  # GET /classificacoes/new
  def new
    @classificacao = Classificacao.new
  end

  # GET /classificacoes/1/edit
  def edit
  end

  # POST /classificacoes
  # POST /classificacoes.json
  def create
    @classificacao = Classificacao.new(classificacao_params)

    respond_to do |format|
      if @classificacao.save
        format.html { redirect_to @classificacao, notice: 'Classificacao was successfully created.' }
        format.json { render :show, status: :created, location: @classificacao }
      else
        format.html { render :new }
        format.json { render json: @classificacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classificacoes/1
  # PATCH/PUT /classificacoes/1.json
  def update
    respond_to do |format|
      if @classificacao.update(classificacao_params)
        format.html { redirect_to @classificacao, notice: 'Classificacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @classificacao }
      else
        format.html { render :edit }
        format.json { render json: @classificacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classificacoes/1
  # DELETE /classificacoes/1.json
  def destroy
    @classificacao.destroy
    respond_to do |format|
      format.html { redirect_to classificacoes_url, notice: 'Classificacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classificacao
      @classificacao = Classificacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def classificacao_params
      params.require(:classificacao).permit(:nome, :idade_minima)
    end
end
