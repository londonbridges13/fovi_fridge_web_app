require 'test_helper'

class SuggestedFoodItemsControllerTest < ActionController::TestCase
  setup do
    @suggested_food_item = suggested_food_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:suggested_food_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create suggested_food_item" do
    assert_difference('SuggestedFoodItem.count') do
      post :create, suggested_food_item: { title: @suggested_food_item.title }
    end

    assert_redirected_to suggested_food_item_path(assigns(:suggested_food_item))
  end

  test "should show suggested_food_item" do
    get :show, id: @suggested_food_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @suggested_food_item
    assert_response :success
  end

  test "should update suggested_food_item" do
    patch :update, id: @suggested_food_item, suggested_food_item: { title: @suggested_food_item.title }
    assert_redirected_to suggested_food_item_path(assigns(:suggested_food_item))
  end

  test "should destroy suggested_food_item" do
    assert_difference('SuggestedFoodItem.count', -1) do
      delete :destroy, id: @suggested_food_item
    end

    assert_redirected_to suggested_food_items_path
  end
end
