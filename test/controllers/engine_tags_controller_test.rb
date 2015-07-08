require 'test_helper'

class EngineTagsControllerTest < ActionController::TestCase
  setup do
    @engine_tag = engine_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:engine_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create engine_tag" do
    assert_difference('EngineTag.count') do
      post :create, engine_tag: { engine_id: @engine_tag.engine_id, tag_id: @engine_tag.tag_id }
    end

    assert_redirected_to engine_tag_path(assigns(:engine_tag))
  end

  test "should show engine_tag" do
    get :show, id: @engine_tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @engine_tag
    assert_response :success
  end

  test "should update engine_tag" do
    patch :update, id: @engine_tag, engine_tag: { engine_id: @engine_tag.engine_id, tag_id: @engine_tag.tag_id }
    assert_redirected_to engine_tag_path(assigns(:engine_tag))
  end

  test "should destroy engine_tag" do
    assert_difference('EngineTag.count', -1) do
      delete :destroy, id: @engine_tag
    end

    assert_redirected_to engine_tags_path
  end
end
