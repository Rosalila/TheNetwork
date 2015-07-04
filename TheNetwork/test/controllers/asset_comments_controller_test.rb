require 'test_helper'

class AssetCommentsControllerTest < ActionController::TestCase
  setup do
    @asset_comment = asset_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asset_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asset_comment" do
    assert_difference('AssetComment.count') do
      post :create, asset_comment: { asset_id: @asset_comment.asset_id, comment: @asset_comment.comment, user_id: @asset_comment.user_id }
    end

    assert_redirected_to asset_comment_path(assigns(:asset_comment))
  end

  test "should show asset_comment" do
    get :show, id: @asset_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asset_comment
    assert_response :success
  end

  test "should update asset_comment" do
    patch :update, id: @asset_comment, asset_comment: { asset_id: @asset_comment.asset_id, comment: @asset_comment.comment, user_id: @asset_comment.user_id }
    assert_redirected_to asset_comment_path(assigns(:asset_comment))
  end

  test "should destroy asset_comment" do
    assert_difference('AssetComment.count', -1) do
      delete :destroy, id: @asset_comment
    end

    assert_redirected_to asset_comments_path
  end
end
