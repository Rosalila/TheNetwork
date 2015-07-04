require 'test_helper'

class ComponentInGamesControllerTest < ActionController::TestCase
  setup do
    @component_in_game = component_in_games(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:component_in_games)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create component_in_game" do
    assert_difference('ComponentInGame.count') do
      post :create, component_in_game: { component_id: @component_in_game.component_id, game_id: @component_in_game.game_id }
    end

    assert_redirected_to component_in_game_path(assigns(:component_in_game))
  end

  test "should show component_in_game" do
    get :show, id: @component_in_game
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @component_in_game
    assert_response :success
  end

  test "should update component_in_game" do
    patch :update, id: @component_in_game, component_in_game: { component_id: @component_in_game.component_id, game_id: @component_in_game.game_id }
    assert_redirected_to component_in_game_path(assigns(:component_in_game))
  end

  test "should destroy component_in_game" do
    assert_difference('ComponentInGame.count', -1) do
      delete :destroy, id: @component_in_game
    end

    assert_redirected_to component_in_games_path
  end
end
