require 'test_helper'

class InteressesControllerTest < ActionController::TestCase
  setup do
    @interess = interesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interess" do
    assert_difference('Interesse.count') do
      post :create, interess: { descricao: @interess.descricao, nome: @interess.nome, user: @interess.user }
    end

    assert_redirected_to interess_path(assigns(:interess))
  end

  test "should show interess" do
    get :show, id: @interess
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @interess
    assert_response :success
  end

  test "should update interess" do
    patch :update, id: @interess, interess: { descricao: @interess.descricao, nome: @interess.nome, user: @interess.user }
    assert_redirected_to interess_path(assigns(:interess))
  end

  test "should destroy interess" do
    assert_difference('Interesse.count', -1) do
      delete :destroy, id: @interess
    end

    assert_redirected_to interesses_path
  end
end
