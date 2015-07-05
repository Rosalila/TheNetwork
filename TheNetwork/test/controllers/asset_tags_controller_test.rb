require 'test_helper'

class AssetTagsControllerTest < ActionController::TestCase
  setup do
    @asset_tag = asset_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asset_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asset_tag" do
    assert_difference('AssetTag.count') do
      post :create, asset_tag: { asset_id: @asset_tag.asset_id, tag_id: @asset_tag.tag_id }
    end

    assert_redirected_to asset_tag_path(assigns(:asset_tag))
  end

  test "should show asset_tag" do
    get :show, id: @asset_tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asset_tag
    assert_response :success
  end

  test "should update asset_tag" do
    patch :update, id: @asset_tag, asset_tag: { asset_id: @asset_tag.asset_id, tag_id: @asset_tag.tag_id }
    assert_redirected_to asset_tag_path(assigns(:asset_tag))
  end

  test "should destroy asset_tag" do
    assert_difference('AssetTag.count', -1) do
      delete :destroy, id: @asset_tag
    end

    assert_redirected_to asset_tags_path
  end
end
