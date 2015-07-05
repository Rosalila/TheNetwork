require 'test_helper'

class AssetRatingsControllerTest < ActionController::TestCase
  setup do
    @asset_rating = asset_ratings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asset_ratings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asset_rating" do
    assert_difference('AssetRating.count') do
      post :create, asset_rating: { asset_id: @asset_rating.asset_id, rating: @asset_rating.rating }
    end

    assert_redirected_to asset_rating_path(assigns(:asset_rating))
  end

  test "should show asset_rating" do
    get :show, id: @asset_rating
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asset_rating
    assert_response :success
  end

  test "should update asset_rating" do
    patch :update, id: @asset_rating, asset_rating: { asset_id: @asset_rating.asset_id, rating: @asset_rating.rating }
    assert_redirected_to asset_rating_path(assigns(:asset_rating))
  end

  test "should destroy asset_rating" do
    assert_difference('AssetRating.count', -1) do
      delete :destroy, id: @asset_rating
    end

    assert_redirected_to asset_ratings_path
  end
end
