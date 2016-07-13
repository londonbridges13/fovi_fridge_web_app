class BasicFoodItemsController < ApplicationController
  before_filter :authenticate_admin!, only: [:index, :show, :new, :create, :update, :edit, :destroy]
  before_filter :authenticate_user!, only: [:index, :show] #just basic_food_items don't need authentication
  before_action :set_basic_food_item, only: [:show, :edit, :update, :destroy]

  # GET /basic_food_items
  # GET /basic_food_items.json
  def index
    @basic_food_items = BasicFoodItem.all
  end

  # GET /basic_food_items/1
  # GET /basic_food_items/1.json
  def show
  end

  # GET /basic_food_items/new
  def new
    unless current_user == nil
      @basic_food_item = BasicFoodItem.new
    end
  end

  # GET /basic_food_items/1/edit
  def edit
  end

  # POST /basic_food_items
  # POST /basic_food_items.json
  def create
    @basic_food_item = BasicFoodItem.new(basic_food_item_params)
    @basic_food_item.image_url = URI(request.url) + basic_food_item.image.url(:thumb)
    respond_to do |format|
      if @basic_food_item.save && config.force_ssl == true
        format.html { redirect_to @basic_food_item, notice: 'Basic food item was successfully created.' }
        format.json { render :show, status: :created, location: @basic_food_item }
      else
        format.html { render :new }
        format.json { render json: @basic_food_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /basic_food_items/1
  # PATCH/PUT /basic_food_items/1.json
  def update
    respond_to do |format|
      @basic_food_item.image_url = URI(request.url) + @basic_food_item.image.url(:thumb)
      if @basic_food_item.update(basic_food_item_params) && config.force_ssl == true
        format.html { redirect_to @basic_food_item, notice: 'Basic food item was successfully updated.' }
        format.json { render :show, status: :ok, location: @basic_food_item }
      else
        format.html { render :edit }
        format.json { render json: @basic_food_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /basic_food_items/1
  # DELETE /basic_food_items/1.json
  def destroy
    @basic_food_item.destroy
    respond_to do |format|
      format.html { redirect_to basic_food_items_url, notice: 'Basic food item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basic_food_item
      @basic_food_item = BasicFoodItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def basic_food_item_params
      params.require(:basic_food_item).permit(:title, :image, :categories, :is_basic, :fridge_amount, :shoppinglist_amount, :mylist_amount, :measurement_type, :full_amount, :current_amount, :usually_expires, :expiration_date, :modified_date, :calories, :total_fat, :saturated_fat, :unsaturated_fat, :protien, :carbohydrate, :fiber, :food_category, :iron, :vitamin_a, :vitamin_b,
       :vitamin_b6, :vitamin_b12, :vitamin_c, :vitamin_d,  :vitamin_e, :vitamin_k, :potassium, :sodium, :niacin, :folate, :zinc, :thiamin, :riboflavin, :calcium, :magnesium, :cholesterol, :caffeine, :five_recipes, :diets, :image_url )
    end
end
