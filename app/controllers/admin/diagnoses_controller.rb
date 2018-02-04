module Admin
 class DiagnosesController < ApplicationController
   before_action :set_diagnosis, only: [:show, :edit, :update, :destroy]

   # GET /diagnoses
   # GET /diagnoses.json
   def index
     @diagnoses = Diagnosis.all
   end

   # GET /diagnoses/1
   # GET /diagnoses/1.json
   def show
   end

   # GET /diagnoses/new
   def new
     @diagnosis = Diagnosis.new
   end

   # GET /diagnoses/1/edit
   def edit
   end

   # POST /diagnoses
   # POST /diagnoses.json
   def create
     @diagnosis = Diagnosis.new diagnosis_params
       if @diagnosis.save
         redirect_to admin_diagnoses_path, notice: "Diagnosis has beed created successfully"
       else
         render :new
       end
   end

   # PATCH/PUT /diagnoses/1
   # PATCH/PUT /diagnoses/1.json
   def update
     if @diagnosis.update diagnosis_params
       redirect_to admin_diagnoses_path, notice: "Diagnosis has beed updated successfully"
     else
       render :edit
     end
   end

   # DELETE /diagnosiss/1
   # DELETE /diagnosiss/1.json
   def destroy
     @diagnosis.destroy
     redirect_to admin_diagnoses_path, notice: "Diagnosis has beed deleted successfully"
   end

   private
     # Use callbacks to share common setup or constraints between actions.
     def set_diagnosis
       @diagnosis = Diagnosis.find(params[:id])
     end

     # Never trust parameters from the scary internet, only allow the white list through.
     def diagnosis_params
       params.require(:diagnosis).permit(:name)
     end
 end

end
