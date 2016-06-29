require 'test_helper'

class IncomingMailsControllerTest < ActionController::TestCase
  setup do
    @incoming_mail = incoming_mails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incoming_mails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create incoming_mail" do
    assert_difference('IncomingMail.count') do
      post :create, incoming_mail: { abouts: @incoming_mail.abouts, address: @incoming_mail.address, date: @incoming_mail.date, nomor_petunjuk: @incoming_mail.nomor_petunjuk }
    end

    assert_redirected_to incoming_mail_path(assigns(:incoming_mail))
  end

  test "should show incoming_mail" do
    get :show, id: @incoming_mail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @incoming_mail
    assert_response :success
  end

  test "should update incoming_mail" do
    patch :update, id: @incoming_mail, incoming_mail: { abouts: @incoming_mail.abouts, address: @incoming_mail.address, date: @incoming_mail.date, nomor_petunjuk: @incoming_mail.nomor_petunjuk }
    assert_redirected_to incoming_mail_path(assigns(:incoming_mail))
  end

  test "should destroy incoming_mail" do
    assert_difference('IncomingMail.count', -1) do
      delete :destroy, id: @incoming_mail
    end

    assert_redirected_to incoming_mails_path
  end
end
