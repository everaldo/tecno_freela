class Admin::CategoriesController < Admin::AdminController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  # GET /jobs_categories
  # GET /jobs_categories.json
  def index
    @categories = Category.all
  end

  # GET /jobs_categories/1
  # GET /jobs_categories/1.json
  def show
  end

  # GET /jobs_categories/new
  def new
    @category = Category.new
  end

  # GET /jobs_categories/1/edit
  def edit
  end

  # POST /jobs_categories
  # POST /jobs_categories.json
  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to [:admin, @category], notice: 'Jobs category was successfully created.' }
        format.json { render action: 'show', status: :created, location: [:admin, @category] }
      else
        format.html { render action: 'new' }
        format.json { render json: [:admin, @category.errors], status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs_categories/1
  # PATCH/PUT /jobs_categories/1.json
  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to [:admin, @category], notice: 'Jobs category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: [:admin, @category.errors], status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs_categories/1
  # DELETE /jobs_categories/1.json
  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to admin_jobs_categories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name)
    end
end
