require 'test_helper'

class CivilSubjectsControllerTest < ActionController::TestCase
  setup do
    @civil_subject = civil_subjects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:civil_subjects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create civil_subject" do
    assert_difference('CivilSubject.count') do
      post :create, civil_subject: { category: @civil_subject.category, code: @civil_subject.code, credit: @civil_subject.credit, name: @civil_subject.name, semester: @civil_subject.semester }
    end

    assert_redirected_to civil_subject_path(assigns(:civil_subject))
  end

  test "should show civil_subject" do
    get :show, id: @civil_subject
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @civil_subject
    assert_response :success
  end

  test "should update civil_subject" do
    patch :update, id: @civil_subject, civil_subject: { category: @civil_subject.category, code: @civil_subject.code, credit: @civil_subject.credit, name: @civil_subject.name, semester: @civil_subject.semester }
    assert_redirected_to civil_subject_path(assigns(:civil_subject))
  end

  test "should destroy civil_subject" do
    assert_difference('CivilSubject.count', -1) do
      delete :destroy, id: @civil_subject
    end

    assert_redirected_to civil_subjects_path
  end
end
