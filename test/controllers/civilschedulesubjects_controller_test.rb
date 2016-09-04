require 'test_helper'

class CivilschedulesubjectsControllerTest < ActionController::TestCase
  setup do
    @civilschedulesubject = civilschedulesubjects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:civilschedulesubjects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create civilschedulesubject" do
    assert_difference('Civilschedulesubject.count') do
      post :create, civilschedulesubject: { civil_subject_id: @civilschedulesubject.civil_subject_id, count: @civilschedulesubject.count, day: @civilschedulesubject.day, lecture1_id: @civilschedulesubject.lecture1_id, lecture2_id: @civilschedulesubject.lecture2_id, lecture3_id: @civilschedulesubject.lecture3_id, room_id: @civilschedulesubject.room_id, time_id: @civilschedulesubject.time_id, year_id: @civilschedulesubject.year_id }
    end

    assert_redirected_to civilschedulesubject_path(assigns(:civilschedulesubject))
  end

  test "should show civilschedulesubject" do
    get :show, id: @civilschedulesubject
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @civilschedulesubject
    assert_response :success
  end

  test "should update civilschedulesubject" do
    patch :update, id: @civilschedulesubject, civilschedulesubject: { civil_subject_id: @civilschedulesubject.civil_subject_id, count: @civilschedulesubject.count, day: @civilschedulesubject.day, lecture1_id: @civilschedulesubject.lecture1_id, lecture2_id: @civilschedulesubject.lecture2_id, lecture3_id: @civilschedulesubject.lecture3_id, room_id: @civilschedulesubject.room_id, time_id: @civilschedulesubject.time_id, year_id: @civilschedulesubject.year_id }
    assert_redirected_to civilschedulesubject_path(assigns(:civilschedulesubject))
  end

  test "should destroy civilschedulesubject" do
    assert_difference('Civilschedulesubject.count', -1) do
      delete :destroy, id: @civilschedulesubject
    end

    assert_redirected_to civilschedulesubjects_path
  end
end
