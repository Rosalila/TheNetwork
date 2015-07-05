require 'test_helper'

class ResourceCommentsControllerTest < ActionController::TestCase
  setup do
    @resource_comment = resource_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resource_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resource_comment" do
    assert_difference('ResourceComment.count') do
      post :create, resource_comment: { comment: @resource_comment.comment, resource_id: @resource_comment.resource_id, user_id: @resource_comment.user_id }
    end

    assert_redirected_to resource_comment_path(assigns(:resource_comment))
  end

  test "should show resource_comment" do
    get :show, id: @resource_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resource_comment
    assert_response :success
  end

  test "should update resource_comment" do
    patch :update, id: @resource_comment, resource_comment: { comment: @resource_comment.comment, resource_id: @resource_comment.resource_id, user_id: @resource_comment.user_id }
    assert_redirected_to resource_comment_path(assigns(:resource_comment))
  end

  test "should destroy resource_comment" do
    assert_difference('ResourceComment.count', -1) do
      delete :destroy, id: @resource_comment
    end

    assert_redirected_to resource_comments_path
  end
end
