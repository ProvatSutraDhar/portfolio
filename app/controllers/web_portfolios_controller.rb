class WebPortfoliosController < ApplicationController
  before_action :set_web_portfolio, only: %i[ show edit update destroy ]
  # GET /web_portfolios or /web_portfolios.json
  def index
    @web_portfolios = WebPortfolio.all
  end

  # GET /web_portfolios/1 or /web_portfolios/1.json
  def show
  end

  # GET /web_portfolios/new
  def new
    @web_portfolio = WebPortfolio.new
    
    if !current_user.admin?
      redirect_to root_path
    end
  end

  # GET /web_portfolios/1/edit
  def edit
    if !current_user.admin?
      redirect_to root_path
    end
  end

  # POST /web_portfolios or /web_portfolios.json
  def create
    @web_portfolio = WebPortfolio.new(web_portfolio_params)

    respond_to do |format|
      if @web_portfolio.save
        format.html { redirect_to web_portfolio_url(@web_portfolio), notice: "Web portfolio was successfully created." }
        format.json { render :show, status: :created, location: @web_portfolio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @web_portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /web_portfolios/1 or /web_portfolios/1.json
  def update
    respond_to do |format|
      if @web_portfolio.update(web_portfolio_params)
        format.html { redirect_to web_portfolio_url(@web_portfolio), notice: "Web portfolio was successfully updated." }
        format.json { render :show, status: :ok, location: @web_portfolio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @web_portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /web_portfolios/1 or /web_portfolios/1.json
  def destroy
    @web_portfolio.destroy

    respond_to do |format|
      format.html { redirect_to web_portfolios_url, notice: "Web portfolio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_web_portfolio
      @web_portfolio = WebPortfolio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def web_portfolio_params
      params.require(:web_portfolio).permit(:title, :subtitle, :portfolio_type, :client_side, :server_side, :database, :description, :url, :photo, :photo_cache)
    end
end
