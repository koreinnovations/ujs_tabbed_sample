require 'test_helper'

class Entity2sControllerTest < ActionController::TestCase
  setup do
    @entity2 = entity2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entity2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entity2" do
    assert_difference('Entity2.count') do
      post :create, entity2: @entity2.attributes
    end

    assert_redirected_to entity2_path(assigns(:entity2))
  end

  test "should show entity2" do
    get :show, id: @entity2.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entity2.to_param
    assert_response :success
  end

  test "should update entity2" do
    put :update, id: @entity2.to_param, entity2: @entity2.attributes
    assert_redirected_to entity2_path(assigns(:entity2))
  end

  test "should destroy entity2" do
    assert_difference('Entity2.count', -1) do
      delete :destroy, id: @entity2.to_param
    end

    assert_redirected_to entity2s_path
  end
end
