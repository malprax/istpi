require 'test_helper'

class StudiyearsControllerTest < ActionController::TestCase
  setup do
    @studiyear = studiyears(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:studiyears)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create studiyear" do
    assert_difference('Studiyear.count') do
      post :create, studiyear: { name: @studiyear.name }
    end

    assert_redirected_to studiyear_path(assigns(:studiyear))
  end

  test "should show studiyear" do
    get :show, id: @studiyear
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @studiyear
    assert_response :success
  end

  test "should update studiyear" do
    patch :update, id: @studiyear, studiyear: { name: @studiyear.name }
    assert_redirected_to studiyear_path(assigns(:studiyear))
  end

  test "should destroy studiyear" do
    assert_difference('Studiyear.count', -1) do
      delete :destroy, id: @studiyear
    end

    assert_redirected_to studiyears_path
  end
end
