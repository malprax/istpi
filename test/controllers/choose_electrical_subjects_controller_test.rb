require 'test_helper'

class ChooseElectricalSubjectsControllerTest < ActionController::TestCase
  setup do
    @choose_electrical_subject = choose_electrical_subjects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:choose_electrical_subjects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create choose_electrical_subject" do
    assert_difference('ChooseElectricalSubject.count') do
      post :create, choose_electrical_subject: { electrical_subject_id: @choose_electrical_subject.electrical_subject_id, studiyear_id: @choose_electrical_subject.studiyear_id, user_id: @choose_electrical_subject.user_id }
    end

    assert_redirected_to choose_electrical_subject_path(assigns(:choose_electrical_subject))
  end

  test "should show choose_electrical_subject" do
    get :show, id: @choose_electrical_subject
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @choose_electrical_subject
    assert_response :success
  end

  test "should update choose_electrical_subject" do
    patch :update, id: @choose_electrical_subject, choose_electrical_subject: { electrical_subject_id: @choose_electrical_subject.electrical_subject_id, studiyear_id: @choose_electrical_subject.studiyear_id, user_id: @choose_electrical_subject.user_id }
    assert_redirected_to choose_electrical_subject_path(assigns(:choose_electrical_subject))
  end

  test "should destroy choose_electrical_subject" do
    assert_difference('ChooseElectricalSubject.count', -1) do
      delete :destroy, id: @choose_electrical_subject
    end

    assert_redirected_to choose_electrical_subjects_path
  end
end
