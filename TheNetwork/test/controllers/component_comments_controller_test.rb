require 'test_helper'

class ComponentCommentsControllerTest < ActionController::TestCase
  setup do
    @component_comment = component_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:component_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create component_comment" do
    assert_difference('ComponentComment.count') do
      post :create, component_comment: { comment: @component_comment.comment, component_id: @component_comment.component_id, user_id: @component_comment.user_id }
    end

    assert_redirected_to component_comment_path(assigns(:component_comment))
  end

  test "should show component_comment" do
    get :show, id: @component_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @component_comment
    assert_response :success
  end

  test "should update component_comment" do
    patch :update, id: @component_comment, component_comment: { comment: @component_comment.comment, component_id: @component_comment.component_id, user_id: @component_comment.user_id }
    assert_redirected_to component_comment_path(assigns(:component_comment))
  end

  test "should destroy component_comment" do
    assert_difference('ComponentComment.count', -1) do
      delete :destroy, id: @component_comment
    end

    assert_redirected_to component_comments_path
  end
end
