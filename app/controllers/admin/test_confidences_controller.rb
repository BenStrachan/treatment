module Admin
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

    def create
      @test_confidence = TestConfidence.new test_confidence_params
      if @test_confidence.save
        redirect_to admin_test_confidences_path, notice: "Test Confidence has beed created successfully"
      else
        render :new
      end
    end

    def edit
    end

    def destroy
      @test_confidence.delete
      redirect_to admin_test_confidences_path, notice: "Test Confidence has beed deleted successfully"
    end

    def update
      if @test_confidence.update test_confidence_params
        redirect_to admin_test_confidences_path, notice: "Test Confidence has beed updated successfully"
      else
        render :edit
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
end
