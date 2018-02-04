module Admin
  class TestConclusionsController < ApplicationController
    before_action :set_test_conclusion, only: [:show, :edit, :update, :destroy]

    # GET /test_conclusions
    # GET /test_conclusions.json
    def index
      @test_conclusions = TestConclusion.all
    end

    # GET /test_conclusions/1
    # GET /test_conclusions/1.json
    def show
    end

    # GET /test_conclusions/new
    def new
      @test_conclusion = TestConclusion.new
    end

    # GET /test_conclusions/1/edit
    def edit
    end

    def create
      @test_conclusion = TestConclusion.new test_conclusion_params
      if @test_conclusion.save
        redirect_to admin_test_conclusions_path, notice: "Test Conclusion has beed created successfully"
      else
        render :new
      end
    end

    def edit
    end

    def destroy
      @test_conclusion.delete
      redirect_to admin_test_conclusions_path, notice: "Test Conclusion has beed deleted successfully"
    end

    def update
      if @test_conclusion.update test_conclusion_params
        redirect_to admin_test_conclusions_path, notice: "Test Conclusion has beed updated successfully"
      else
        render :edit
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_test_conclusion
        @test_conclusion = TestConclusion.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def test_conclusion_params
        params.require(:test_conclusion).permit(:test, :diagnosis, :conclusion_rating)
      end
  end
end
