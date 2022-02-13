class MlPortfoliosController < ApplicationController
  before_action :set_ml_portfolio, only: %i[ show edit update destroy ]

  # GET /ml_portfolios or /ml_portfolios.json
  def index
    @ml_portfolios = MlPortfolio.all
  end

  # GET /ml_portfolios/1 or /ml_portfolios/1.json
  def show
  end

  # GET /ml_portfolios/new
  def new
    @ml_portfolio = MlPortfolio.new
  end

  # GET /ml_portfolios/1/edit
  def edit
  end

  # POST /ml_portfolios or /ml_portfolios.json
  def create
    @ml_portfolio = MlPortfolio.new(ml_portfolio_params)

    respond_to do |format|
      if @ml_portfolio.save
        format.html { redirect_to ml_portfolio_url(@ml_portfolio), notice: "Ml portfolio was successfully created." }
        format.json { render :show, status: :created, location: @ml_portfolio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ml_portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ml_portfolios/1 or /ml_portfolios/1.json
  def update
    respond_to do |format|
      if @ml_portfolio.update(ml_portfolio_params)
        format.html { redirect_to ml_portfolio_url(@ml_portfolio), notice: "Ml portfolio was successfully updated." }
        format.json { render :show, status: :ok, location: @ml_portfolio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ml_portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ml_portfolios/1 or /ml_portfolios/1.json
  def destroy
    @ml_portfolio.destroy

    respond_to do |format|
      format.html { redirect_to ml_portfolios_url, notice: "Ml portfolio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ml_portfolio
      @ml_portfolio = MlPortfolio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ml_portfolio_params
      params.require(:ml_portfolio).permit(:title, :subtitle, :type, :language, :framework, :libraries, :description, :url, :photo)
    end
end
