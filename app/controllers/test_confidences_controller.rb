class TestConfidencesController < ApplicationController
  before_action :set_test_confidence, only: [:show, :edit, :update, :destroy]

  # GET /test_confidences
  # GET /test_confidences.json
  def index
    @test_confidences = TestConfidence.all
  end

  # GET /test_confidences/1
  # GET /test_confidences/1.json
  def show
  end

  # GET /test_confidences/new
  def new
    @test_confidence = TestConfidence.new
  end

  # GET /test_confidences/1/edit
  def edit
  end

  # POST /test_confidences
  # POST /test_confidences.json
  def create
    @test_confidence = TestConfidence.new(test_confidence_params)

    respond_to do |format|
      if @test_confidence.save
        format.html { redirect_to @test_confidence, notice: 'Test confidence was successfully created.' }
        format.json { render :show, status: :created, location: @test_confidence }
      else
        format.html { render :new }
        format.json { render json: @test_confidence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_confidences/1
  # PATCH/PUT /test_confidences/1.json
  def update
    respond_to do |format|
      if @test_confidence.update(test_confidence_params)
        format.html { redirect_to @test_confidence, notice: 'Test confidence was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_confidence }
      else
        format.html { render :edit }
        format.json { render json: @test_confidence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_confidences/1
  # DELETE /test_confidences/1.json
  def destroy
    @test_confidence.destroy
    respond_to do |format|
      format.html { redirect_to test_confidences_url, notice: 'Test confidence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_confidence
      @test_confidence = TestConfidence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_confidence_params
      params.require(:test_confidence).permit(:test, :test_result, :confidence_rating)
    end
end
