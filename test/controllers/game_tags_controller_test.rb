require 'test_helper'

class GameTagsControllerTest < ActionController::TestCase
  setup do
    @game_tag = game_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:game_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game_tag" do
    assert_difference('GameTag.count') do
      post :create, game_tag: { game_id: @game_tag.game_id, tag_id: @game_tag.tag_id }
    end

    assert_redirected_to game_tag_path(assigns(:game_tag))
  end

  test "should show game_tag" do
    get :show, id: @game_tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game_tag
    assert_response :success
  end

  test "should update game_tag" do
    patch :update, id: @game_tag, game_tag: { game_id: @game_tag.game_id, tag_id: @game_tag.tag_id }
    assert_redirected_to game_tag_path(assigns(:game_tag))
  end

  test "should destroy game_tag" do
    assert_difference('GameTag.count', -1) do
      delete :destroy, id: @game_tag
    end

    assert_redirected_to game_tags_path
  end
end
