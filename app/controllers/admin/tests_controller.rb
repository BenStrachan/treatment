 module Admin
   class TestsController < ApplicationController
     before_action :set_test, only: [:show, :edit, :update, :destroy]

     # GET /tests
     # GET /tests.json
     def index
       @tests = Test.all
     end

     # GET /tests/1
     # GET /tests/1.json
     def show
     end

     # GET /tests/new
     def new
       @test = Test.new
     end

     # GET /tests/1/edit
     def edit
     end

     def create
       @test = Test.new test_params
       if @test.save
         redirect_to admin_tests_path, notice: "Test has beed created successfully"
       else
         render :new
       end
     end

     def edit
     end

     def destroy
       @test.delete
       redirect_to admin_tests_path, notice: "Test has beed deleted successfully"
     end

     def update
       if @test.update test_params
         redirect_to admin_tests_path, notice: "Test has beed updated successfully"
       else
         render :edit
       end
     end

     private
       # Use callbacks to share common setup or constraints between actions.
       def set_test
         @test = Test.find(params[:id])
       end

       # Never trust parameters from the scary internet, only allow the white list through.
       def test_params
         params.require(:test).permit(:name, :description, :question, :result_type, :result_unit)
       end
   end

 end
