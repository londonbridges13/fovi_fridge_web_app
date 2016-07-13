class SuggestedFoodItemsController < ApplicationController
  # before_filter :authenticate_admin!, only: [:update, :edit, :index, :destroy, :show]
  # before_filter :authenticate_user!, only: [:create, :new]
  before_action :set_suggested_food_item, only: [:show, :edit, :update, :destroy]

  # GET /suggested_food_items
  # GET /suggested_food_items.json
  def index
    @suggested_food_items = SuggestedFoodItem.all
  end

  # GET /suggested_food_items/1
  # GET /suggested_food_items/1.json
  def show
  end

  # GET /suggested_food_items/new
  def new
    @suggested_food_item = SuggestedFoodItem.new
  end

  # GET /suggested_food_items/1/edit
  def edit
  end

  # POST /suggested_food_items
  # POST /suggested_food_items.json
  def create
    @suggested_food_item = SuggestedFoodItem.new(suggested_food_item_params)

    respond_to do |format|
      if @suggested_food_item.save
        format.html { redirect_to @suggested_food_item, notice: 'Suggested food item was successfully created.' }
        format.json { render :show, status: :created, location: @suggested_food_item }
      else
        format.html { render :new }
        format.json { render json: @suggested_food_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suggested_food_items/1
  # PATCH/PUT /suggested_food_items/1.json
  def update
    respond_to do |format|
      if @suggested_food_item.update(suggested_food_item_params)
        format.html { redirect_to @suggested_food_item, notice: 'Suggested food item was successfully updated.' }
        format.json { render :show, status: :ok, location: @suggested_food_item }
      else
        format.html { render :edit }
        format.json { render json: @suggested_food_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suggested_food_items/1
  # DELETE /suggested_food_items/1.json
  def destroy
    @suggested_food_item.destroy
    respond_to do |format|
      format.html { redirect_to suggested_food_items_url, notice: 'Suggested food item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suggested_food_item
      @suggested_food_item = SuggestedFoodItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def suggested_food_item_params
      params.require(:suggested_food_item).permit(:title, :categories, :is_basic, :fridge_amount, :shoppinglist_amount, :mylist_amount,
      :measurement_type, :full_amount, :current_amount, :usually_expires, :expiration_date, :modified_date)
    end
end
