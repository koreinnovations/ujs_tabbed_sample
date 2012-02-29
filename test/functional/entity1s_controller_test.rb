require 'test_helper'

class Entity1sControllerTest < ActionController::TestCase
  setup do
    @entity1 = entity1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entity1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entity1" do
    assert_difference('Entity1.count') do
      post :create, entity1: @entity1.attributes
    end

    assert_redirected_to entity1_path(assigns(:entity1))
  end

  test "should show entity1" do
    get :show, id: @entity1.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entity1.to_param
    assert_response :success
  end

  test "should update entity1" do
    put :update, id: @entity1.to_param, entity1: @entity1.attributes
    assert_redirected_to entity1_path(assigns(:entity1))
  end

  test "should destroy entity1" do
    assert_difference('Entity1.count', -1) do
      delete :destroy, id: @entity1.to_param
    end

    assert_redirected_to entity1s_path
  end
end
