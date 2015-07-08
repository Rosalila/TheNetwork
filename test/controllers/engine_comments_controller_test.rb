require 'test_helper'

class EngineCommentsControllerTest < ActionController::TestCase
  setup do
    @engine_comment = engine_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:engine_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create engine_comment" do
    assert_difference('EngineComment.count') do
      post :create, engine_comment: { comment: @engine_comment.comment, engine_id: @engine_comment.engine_id, user_id: @engine_comment.user_id }
    end

    assert_redirected_to engine_comment_path(assigns(:engine_comment))
  end

  test "should show engine_comment" do
    get :show, id: @engine_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @engine_comment
    assert_response :success
  end

  test "should update engine_comment" do
    patch :update, id: @engine_comment, engine_comment: { comment: @engine_comment.comment, engine_id: @engine_comment.engine_id, user_id: @engine_comment.user_id }
    assert_redirected_to engine_comment_path(assigns(:engine_comment))
  end

  test "should destroy engine_comment" do
    assert_difference('EngineComment.count', -1) do
      delete :destroy, id: @engine_comment
    end

    assert_redirected_to engine_comments_path
  end
end
