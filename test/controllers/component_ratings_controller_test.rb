require 'test_helper'

class ComponentRatingsControllerTest < ActionController::TestCase
  setup do
    @component_rating = component_ratings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:component_ratings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create component_rating" do
    assert_difference('ComponentRating.count') do
      post :create, component_rating: { component_id: @component_rating.component_id, rating: @component_rating.rating }
    end

    assert_redirected_to component_rating_path(assigns(:component_rating))
  end

  test "should show component_rating" do
    get :show, id: @component_rating
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @component_rating
    assert_response :success
  end

  test "should update component_rating" do
    patch :update, id: @component_rating, component_rating: { component_id: @component_rating.component_id, rating: @component_rating.rating }
    assert_redirected_to component_rating_path(assigns(:component_rating))
  end

  test "should destroy component_rating" do
    assert_difference('ComponentRating.count', -1) do
      delete :destroy, id: @component_rating
    end

    assert_redirected_to component_ratings_path
  end
end
