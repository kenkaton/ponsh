class BrandsController < ApplicationController
  before_action :set_brand, only: %i[ show edit update destroy ]

  # GET /brands or /brands.json
  def index
    @query = params[:query]

    # 検索とeager_loadを同時に行い、paginate
    query_scope = Brand.search(@query)
    @pagy, @brands = pagy(query_scope.eager_load(company: [ :address, :contact, :google_map ]))
  end

  # GET /brands/1 or /brands/1.json
  def show
    # ECリスティングはeager_loadされているので、loaded?を使って効率的に確認
    if @brand.ec_listings.loaded?
      stale_listings = @brand.ec_listings.select(&:stale?)
      if stale_listings.any? || @brand.ec_listings.empty?
        RefreshEcListingsJob.perform_later(@brand) if defined?(RefreshEcListingsJob)
      end
    else
      # 念のため、eager_loadされていない場合の処理
      if @brand.ec_listings.stale.exists? || !@brand.ec_listings.exists?
        RefreshEcListingsJob.perform_later(@brand) if defined?(RefreshEcListingsJob)
      end
    end

    # ビューで使用するEC関連データを事前に準備
    @ec_listings = @brand.ec_listings.available.recent.to_a
    @available_volumes = @ec_listings.map(&:volume_ml).compact.uniq.sort
    @available_rice_types = @ec_listings.map(&:rice_type).compact.uniq.sort
    @available_platforms = @ec_listings.map(&:platform).uniq.sort
    prices = @ec_listings.map(&:price).compact
    @price_range = prices.empty? ? [ 0, 0 ] : [ prices.min, prices.max ]
  end

  # GET /brands/new
  def new
    @brand = Brand.new
  end

  # GET /brands/1/edit
  def edit
  end

  # POST /brands or /brands.json
  def create
    @brand = Brand.new(brand_params)

    respond_to do |format|
      if @brand.save
        format.html { redirect_to @brand, notice: t("common.notice.created", model: Brand.model_name.human) }
        format.json { render :show, status: :created, location: @brand }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brands/1 or /brands/1.json
  def update
    respond_to do |format|
      if @brand.update(brand_params)
        format.html { redirect_to @brand, notice: t("common.notice.updated", model: Brand.model_name.human) }
        format.json { render :show, status: :ok, location: @brand }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brands/1 or /brands/1.json
  def destroy
    @brand.destroy!

    respond_to do |format|
      format.html { redirect_to brands_path, status: :see_other, notice: t("common.notice.destroyed", model: Brand.model_name.human) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brand
      @brand = Brand.eager_load(
        company: [ :address, :contact, :google_map, :brands ],
        awards: [ contest_edition: [ :contest ] ],
        products: [ :awards, { awards: [ contest_edition: [ :contest ] ] } ],
        ec_listings: []
      ).find_by(public_id: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def brand_params
      params.expect(brand: [ :public_id, :name, :kana, :name_en, :detail, :company_id ])
    end
end
