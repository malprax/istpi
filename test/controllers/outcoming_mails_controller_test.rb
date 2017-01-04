require 'test_helper'

class OutcomingMailsControllerTest < ActionController::TestCase
  setup do
    @outcoming_mail = outcoming_mails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:outcoming_mails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create outcoming_mail" do
    assert_difference('OutcomingMail.count') do
      post :create, outcoming_mail: { abouts: @outcoming_mail.abouts, address: @outcoming_mail.address, date: @outcoming_mail.date, nomor_petunjuk: @outcoming_mail.nomor_petunjuk }
    end

    assert_redirected_to outcoming_mail_path(assigns(:outcoming_mail))
  end

  test "should show outcoming_mail" do
    get :show, id: @outcoming_mail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @outcoming_mail
    assert_response :success
  end

  test "should update outcoming_mail" do
    patch :update, id: @outcoming_mail, outcoming_mail: { abouts: @outcoming_mail.abouts, address: @outcoming_mail.address, date: @outcoming_mail.date, nomor_petunjuk: @outcoming_mail.nomor_petunjuk }
    assert_redirected_to outcoming_mail_path(assigns(:outcoming_mail))
  end

  test "should destroy outcoming_mail" do
    assert_difference('OutcomingMail.count', -1) do
      delete :destroy, id: @outcoming_mail
    end

    assert_redirected_to outcoming_mails_path
  end
end
