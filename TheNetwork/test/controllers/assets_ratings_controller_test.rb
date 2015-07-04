require 'test_helper'

class AssetsRatingsControllerTest < ActionController::TestCase
  setup do
    @assets_rating = assets_ratings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assets_ratings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assets_rating" do
    assert_difference('AssetsRating.count') do
      post :create, assets_rating: { asset_id: @assets_rating.asset_id, rating: @assets_rating.rating }
    end

    assert_redirected_to assets_rating_path(assigns(:assets_rating))
  end

  test "should show assets_rating" do
    get :show, id: @assets_rating
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assets_rating
    assert_response :success
  end

  test "should update assets_rating" do
    patch :update, id: @assets_rating, assets_rating: { asset_id: @assets_rating.asset_id, rating: @assets_rating.rating }
    assert_redirected_to assets_rating_path(assigns(:assets_rating))
  end

  test "should destroy assets_rating" do
    assert_difference('AssetsRating.count', -1) do
      delete :destroy, id: @assets_rating
    end

    assert_redirected_to assets_ratings_path
  end
end
