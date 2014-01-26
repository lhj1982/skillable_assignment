class CompaniesController < ApplicationController
  before_filter :authenticate
  before_action :set_company, only: [:show, :edit, :update, :destroy, :rate]

  # GET /companies
  # GET /companies.json
  def index
    if current_user.nil?
      redirect_to root_path
    else 
      puts '233r'
    end
    @companies = Company.all
  end

  # GET /companies/1
  # GET /companies/1.json
  def show
  end

  # GET /companies/new
  def new
    @company = Company.new
  end

  # GET /companies/1/edit
  def edit
  end

  # POST /companies
  # POST /companies.json
  def create
    Company.transaction do
    @company = Company.new(company_params)
    logger.warn "asfafdas #{@company.to_yaml}"
    respond_to do |format|
      if @company.save
        format.html { redirect_to @company, notice: 'Company was successfully created.' }
        format.json { render action: 'show', status: :created, location: @company }
        companyReview = CompanyReview.new
        companyReview.user_id = current_user.id
        companyReview.company_id = @company.id
        companyReview.save!
      else
        format.html { render action: 'new' }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end
  end

  # PATCH/PUT /companies/1
  # PATCH/PUT /companies/1.json
  def update
    respond_to do |format|
      if @company.update(company_params)
        format.html { redirect_to @company, notice: 'Company was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companies/1
  # DELETE /companies/1.json
  def destroy
    Company.transaction do
    @company.destroy
    respond_to do |format|
      format.html { redirect_to companies_url }
      format.json { head :no_content }
    end
    end
  end

  # GET
  def rate
    if request.post?
      puts companyReview_params
      Company.transaction do
      @companyReview = CompanyReview.where(company_id: params[:id], user_id: current_user.id).first
      @companyReview.update(companyReview_params)
      # update company votes
      @company.votes = CompanyReview.where(company_id: params[:id]).count
      @company.save!
      end
      #handle posts
    else
      @companyReview = CompanyReview.where(company_id: params[:id], user_id: current_user.id).first
      puts @companyReview
      #handle gets
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params.require(:company).permit(:logo, :name, :city, :country, :employee_satisfaction, :votes)
    end

    def companyReview_params
      params.require(:companyReview).permit(:company_id, :user_id, :clarity_of_role, :trust_responsibilities, :autonomy_flexibility, :guidance_feedback, :creativity_innovation, :equality_fairness, :consistency_transparency, :career_growth, :compensation_benefits, :recongnition_reward, :learning_improvement, :cooperation_efficiency, :workplace, :atmosphere_relationship, :trust_leadship, :workload_balance, :relationship_with_supervisor, :stimulating_job, :voice_own_option, :sense_belonging, :culture_diversity)
    end
end
