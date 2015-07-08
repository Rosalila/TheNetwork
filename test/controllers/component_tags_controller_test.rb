require 'test_helper'

class ComponentTagsControllerTest < ActionController::TestCase
  setup do
    @component_tag = component_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:component_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create component_tag" do
    assert_difference('ComponentTag.count') do
      post :create, component_tag: { component_id: @component_tag.component_id, tag_id: @component_tag.tag_id }
    end

    assert_redirected_to component_tag_path(assigns(:component_tag))
  end

  test "should show component_tag" do
    get :show, id: @component_tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @component_tag
    assert_response :success
  end

  test "should update component_tag" do
    patch :update, id: @component_tag, component_tag: { component_id: @component_tag.component_id, tag_id: @component_tag.tag_id }
    assert_redirected_to component_tag_path(assigns(:component_tag))
  end

  test "should destroy component_tag" do
    assert_difference('ComponentTag.count', -1) do
      delete :destroy, id: @component_tag
    end

    assert_redirected_to component_tags_path
  end
end
