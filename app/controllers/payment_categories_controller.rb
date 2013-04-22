class PaymentCategoriesController < ApplicationController
  before_action :set_payment_category, only: [:show, :edit, :update, :destroy]

  # GET /payment_categories
  # GET /payment_categories.json
  def index
    @payment_categories = PaymentCategory.level(params[:level])
  end

  # GET /payment_categories/1
  # GET /payment_categories/1.json
  def show
  end

  # GET /payment_categories/new
  def new
    @payment_category = PaymentCategory.new
  end

  # GET /payment_categories/1/edit
  def edit
  end

  # POST /payment_categories
  # POST /payment_categories.json
  def create
    @payment_category = PaymentCategory.new(payment_category_params)

    respond_to do |format|
      if @payment_category.save
        format.html { redirect_to @payment_category, notice: 'Payment category was successfully created.' }
        format.json { render action: 'show', status: :created, location: @payment_category }
      else
        format.html { render action: 'new' }
        format.json { render json: @payment_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payment_categories/1
  # PATCH/PUT /payment_categories/1.json
  def update
    respond_to do |format|
      if @payment_category.update(payment_category_params)
        format.html { redirect_to @payment_category, notice: 'Payment category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @payment_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payment_categories/1
  # DELETE /payment_categories/1.json
  def destroy
    @payment_category.destroy
    respond_to do |format|
      format.html { redirect_to payment_categories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment_category
      @payment_category = PaymentCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_category_params
      params.require(:payment_category).permit(:title, :description, :payment_category_id)
    end
end
