require 'test_helper'

class EngineRatingsControllerTest < ActionController::TestCase
  setup do
    @engine_rating = engine_ratings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:engine_ratings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create engine_rating" do
    assert_difference('EngineRating.count') do
      post :create, engine_rating: { engine_id: @engine_rating.engine_id, rating: @engine_rating.rating }
    end

    assert_redirected_to engine_rating_path(assigns(:engine_rating))
  end

  test "should show engine_rating" do
    get :show, id: @engine_rating
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @engine_rating
    assert_response :success
  end

  test "should update engine_rating" do
    patch :update, id: @engine_rating, engine_rating: { engine_id: @engine_rating.engine_id, rating: @engine_rating.rating }
    assert_redirected_to engine_rating_path(assigns(:engine_rating))
  end

  test "should destroy engine_rating" do
    assert_difference('EngineRating.count', -1) do
      delete :destroy, id: @engine_rating
    end

    assert_redirected_to engine_ratings_path
  end
end
