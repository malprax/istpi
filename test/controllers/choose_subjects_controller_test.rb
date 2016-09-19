require 'test_helper'

class ChooseSubjectsControllerTest < ActionController::TestCase
  setup do
    @choose_subject = choose_subjects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:choose_subjects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create choose_subject" do
    assert_difference('ChooseSubject.count') do
      post :create, choose_subject: { electrical_subject_id: @choose_subject.electrical_subject_id, studiyear_id: @choose_subject.studiyear_id }
    end

    assert_redirected_to choose_subject_path(assigns(:choose_subject))
  end

  test "should show choose_subject" do
    get :show, id: @choose_subject
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @choose_subject
    assert_response :success
  end

  test "should update choose_subject" do
    patch :update, id: @choose_subject, choose_subject: { electrical_subject_id: @choose_subject.electrical_subject_id, studiyear_id: @choose_subject.studiyear_id }
    assert_redirected_to choose_subject_path(assigns(:choose_subject))
  end

  test "should destroy choose_subject" do
    assert_difference('ChooseSubject.count', -1) do
      delete :destroy, id: @choose_subject
    end

    assert_redirected_to choose_subjects_path
  end
end
