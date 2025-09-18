class CompaniesController < ApplicationController
  before_action :set_company, only: %i[ show edit update destroy ]

  # GET /companies or /companies.json
  def index
    @companies = policy_scope(Company).eager_load(:address, :contact, :google_map).all
  end

  # GET /companies/1 or /companies/1.json
  def show
    authorize @company
  end

  # GET /companies/new
  def new
    @company = Company.new
    authorize @company
  end

  # GET /companies/1/edit
  def edit
    authorize @company
  end

  # POST /companies or /companies.json
  def create
    @company = Company.new(company_params)
    authorize @company

    respond_to do |format|
      if @company.save
        format.html { redirect_to @company, notice: t("common.notice.created", model: Company.model_name.human) }
        format.json { render :show, status: :created, location: @company }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companies/1 or /companies/1.json
  def update
    authorize @company
    respond_to do |format|
      if @company.update(company_params)
        format.html { redirect_to @company, notice: t("common.notice.updated", model: Company.model_name.human) }
        format.json { render :show, status: :ok, location: @company }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companies/1 or /companies/1.json
  def destroy
    authorize @company
    @company.destroy!

    respond_to do |format|
      format.html { redirect_to companies_path, status: :see_other, notice: t("common.notice.destroyed", model: Company.model_name.human) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.eager_load(:brands, :address, :contact, :google_map).find_by(public_id: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def company_params
      params.expect(company: [ :public_id, :name, :kana, :name_en, :prefecture_code, :city, :address, :tel, :fax, :website, :detail ])
    end
end
