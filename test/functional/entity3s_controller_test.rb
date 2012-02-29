require 'test_helper'

class Entity3sControllerTest < ActionController::TestCase
  setup do
    @entity3 = entity3s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entity3s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entity3" do
    assert_difference('Entity3.count') do
      post :create, entity3: @entity3.attributes
    end

    assert_redirected_to entity3_path(assigns(:entity3))
  end

  test "should show entity3" do
    get :show, id: @entity3.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entity3.to_param
    assert_response :success
  end

  test "should update entity3" do
    put :update, id: @entity3.to_param, entity3: @entity3.attributes
    assert_redirected_to entity3_path(assigns(:entity3))
  end

  test "should destroy entity3" do
    assert_difference('Entity3.count', -1) do
      delete :destroy, id: @entity3.to_param
    end

    assert_redirected_to entity3s_path
  end
end
