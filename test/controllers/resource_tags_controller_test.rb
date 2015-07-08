require 'test_helper'

class ResourceTagsControllerTest < ActionController::TestCase
  setup do
    @resource_tag = resource_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resource_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resource_tag" do
    assert_difference('ResourceTag.count') do
      post :create, resource_tag: { resource_id: @resource_tag.resource_id, tag_id: @resource_tag.tag_id }
    end

    assert_redirected_to resource_tag_path(assigns(:resource_tag))
  end

  test "should show resource_tag" do
    get :show, id: @resource_tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resource_tag
    assert_response :success
  end

  test "should update resource_tag" do
    patch :update, id: @resource_tag, resource_tag: { resource_id: @resource_tag.resource_id, tag_id: @resource_tag.tag_id }
    assert_redirected_to resource_tag_path(assigns(:resource_tag))
  end

  test "should destroy resource_tag" do
    assert_difference('ResourceTag.count', -1) do
      delete :destroy, id: @resource_tag
    end

    assert_redirected_to resource_tags_path
  end
end
