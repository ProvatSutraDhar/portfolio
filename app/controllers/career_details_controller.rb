class CareerDetailsController < ApplicationController
  before_action :set_career_detail, only: %i[ show edit update destroy ]

  # GET /career_details or /career_details.json
  def index
    @career_details = CareerDetail.all
  end

  # GET /career_details/1 or /career_details/1.json
  def show
  end

  # GET /career_details/new
  def new
    @career_detail = CareerDetail.new
  end

  # GET /career_details/1/edit
  def edit
  end

  # POST /career_details or /career_details.json
  def create
    @career_detail = CareerDetail.new(career_detail_params)

    respond_to do |format|
      if @career_detail.save
        format.html { redirect_to career_detail_url(@career_detail), notice: "Career detail was successfully created." }
        format.json { render :show, status: :created, location: @career_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @career_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /career_details/1 or /career_details/1.json
  def update
    respond_to do |format|
      if @career_detail.update(career_detail_params)
        format.html { redirect_to career_detail_url(@career_detail), notice: "Career detail was successfully updated." }
        format.json { render :show, status: :ok, location: @career_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @career_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /career_details/1 or /career_details/1.json
  def destroy
    @career_detail.destroy

    respond_to do |format|
      format.html { redirect_to career_details_url, notice: "Career detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_career_detail
      @career_detail = CareerDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def career_detail_params
      params.require(:career_detail).permit(:heading, :details, :photo, :photo_cache)
    end
end
