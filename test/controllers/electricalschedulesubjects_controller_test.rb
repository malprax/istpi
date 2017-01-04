require 'test_helper'

class ElectricalschedulesubjectsControllerTest < ActionController::TestCase
  setup do
    @electricalschedulesubject = electricalschedulesubjects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:electricalschedulesubjects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create electricalschedulesubject" do
    assert_difference('Electricalschedulesubject.count') do
      post :create, electricalschedulesubject: { civil_subject_id: @electricalschedulesubject.civil_subject_id, count: @electricalschedulesubject.count, day: @electricalschedulesubject.day, lecture1_id: @electricalschedulesubject.lecture1_id, lecture2_id: @electricalschedulesubject.lecture2_id, lecture3_id: @electricalschedulesubject.lecture3_id, room_id: @electricalschedulesubject.room_id, time_id: @electricalschedulesubject.time_id, year_id: @electricalschedulesubject.year_id }
    end

    assert_redirected_to electricalschedulesubject_path(assigns(:electricalschedulesubject))
  end

  test "should show electricalschedulesubject" do
    get :show, id: @electricalschedulesubject
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @electricalschedulesubject
    assert_response :success
  end

  test "should update electricalschedulesubject" do
    patch :update, id: @electricalschedulesubject, electricalschedulesubject: { civil_subject_id: @electricalschedulesubject.civil_subject_id, count: @electricalschedulesubject.count, day: @electricalschedulesubject.day, lecture1_id: @electricalschedulesubject.lecture1_id, lecture2_id: @electricalschedulesubject.lecture2_id, lecture3_id: @electricalschedulesubject.lecture3_id, room_id: @electricalschedulesubject.room_id, time_id: @electricalschedulesubject.time_id, year_id: @electricalschedulesubject.year_id }
    assert_redirected_to electricalschedulesubject_path(assigns(:electricalschedulesubject))
  end

  test "should destroy electricalschedulesubject" do
    assert_difference('Electricalschedulesubject.count', -1) do
      delete :destroy, id: @electricalschedulesubject
    end

    assert_redirected_to electricalschedulesubjects_path
  end
end
