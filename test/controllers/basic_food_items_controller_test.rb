require 'test_helper'

class BasicFoodItemsControllerTest < ActionController::TestCase
  setup do
    @basic_food_item = basic_food_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:basic_food_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create basic_food_item" do
    assert_difference('BasicFoodItem.count') do
      post :create, basic_food_item: { title: @basic_food_item.title }
    end

    assert_redirected_to basic_food_item_path(assigns(:basic_food_item))
  end

  test "should show basic_food_item" do
    get :show, id: @basic_food_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @basic_food_item
    assert_response :success
  end

  test "should update basic_food_item" do
    patch :update, id: @basic_food_item, basic_food_item: { title: @basic_food_item.title }
    assert_redirected_to basic_food_item_path(assigns(:basic_food_item))
  end

  test "should destroy basic_food_item" do
    assert_difference('BasicFoodItem.count', -1) do
      delete :destroy, id: @basic_food_item
    end

    assert_redirected_to basic_food_items_path
  end
end
