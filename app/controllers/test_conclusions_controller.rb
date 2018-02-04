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

  # POST /test_conclusions
  # POST /test_conclusions.json
  def create
    @test_conclusion = TestConclusion.new(test_conclusion_params)

    respond_to do |format|
      if @test_conclusion.save
        format.html { redirect_to @test_conclusion, notice: 'Test conclusion was successfully created.' }
        format.json { render :show, status: :created, location: @test_conclusion }
      else
        format.html { render :new }
        format.json { render json: @test_conclusion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_conclusions/1
  # PATCH/PUT /test_conclusions/1.json
  def update
    respond_to do |format|
      if @test_conclusion.update(test_conclusion_params)
        format.html { redirect_to @test_conclusion, notice: 'Test conclusion was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_conclusion }
      else
        format.html { render :edit }
        format.json { render json: @test_conclusion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_conclusions/1
  # DELETE /test_conclusions/1.json
  def destroy
    @test_conclusion.destroy
    respond_to do |format|
      format.html { redirect_to test_conclusions_url, notice: 'Test conclusion was successfully destroyed.' }
      format.json { head :no_content }
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
