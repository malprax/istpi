require 'test_helper'

class ElectricalSubjectsControllerTest < ActionController::TestCase
  setup do
    @electrical_subject = electrical_subjects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:electrical_subjects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create electrical_subject" do
    assert_difference('ElectricalSubject.count') do
      post :create, electrical_subject: { category: @electrical_subject.category, code: @electrical_subject.code, credit: @electrical_subject.credit, name: @electrical_subject.name, semester: @electrical_subject.semester }
    end

    assert_redirected_to electrical_subject_path(assigns(:electrical_subject))
  end

  test "should show electrical_subject" do
    get :show, id: @electrical_subject
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @electrical_subject
    assert_response :success
  end

  test "should update electrical_subject" do
    patch :update, id: @electrical_subject, electrical_subject: { category: @electrical_subject.category, code: @electrical_subject.code, credit: @electrical_subject.credit, name: @electrical_subject.name, semester: @electrical_subject.semester }
    assert_redirected_to electrical_subject_path(assigns(:electrical_subject))
  end

  test "should destroy electrical_subject" do
    assert_difference('ElectricalSubject.count', -1) do
      delete :destroy, id: @electrical_subject
    end

    assert_redirected_to electrical_subjects_path
  end
end
