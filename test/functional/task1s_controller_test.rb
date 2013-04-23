require 'test_helper'

class Task1sControllerTest < ActionController::TestCase
  setup do
    @task1 = task1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:task1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create task1" do
    assert_difference('Task1.count') do
      post :create, task1: { name: @task1.name }
    end

    assert_redirected_to task1_path(assigns(:task1))
  end

  test "should show task1" do
    get :show, id: @task1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @task1
    assert_response :success
  end

  test "should update task1" do
    put :update, id: @task1, task1: { name: @task1.name }
    assert_redirected_to task1_path(assigns(:task1))
  end

  test "should destroy task1" do
    assert_difference('Task1.count', -1) do
      delete :destroy, id: @task1
    end

    assert_redirected_to task1s_path
  end
end
