require 'test_helper'

class RegistrationsControllerTest < ActionController::TestCase
  setup do
    @registration = registrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registration" do
    assert_difference('Registration.count') do
      post :create, registration: { alamat: @registration.alamat, asal_sekolah: @registration.asal_sekolah, fakultas_peminat: @registration.fakultas_peminat, jenis_kelamin: @registration.jenis_kelamin, jurusan_peminat: @registration.jurusan_peminat, kontak_person: @registration.kontak_person, nama: @registration.nama, tahun_lulus: @registration.tahun_lulus, tanggal_lahir: @registration.tanggal_lahir, tempat_lahir: @registration.tempat_lahir }
    end

    assert_redirected_to registration_path(assigns(:registration))
  end

  test "should show registration" do
    get :show, id: @registration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registration
    assert_response :success
  end

  test "should update registration" do
    patch :update, id: @registration, registration: { alamat: @registration.alamat, asal_sekolah: @registration.asal_sekolah, fakultas_peminat: @registration.fakultas_peminat, jenis_kelamin: @registration.jenis_kelamin, jurusan_peminat: @registration.jurusan_peminat, kontak_person: @registration.kontak_person, nama: @registration.nama, tahun_lulus: @registration.tahun_lulus, tanggal_lahir: @registration.tanggal_lahir, tempat_lahir: @registration.tempat_lahir }
    assert_redirected_to registration_path(assigns(:registration))
  end

  test "should destroy registration" do
    assert_difference('Registration.count', -1) do
      delete :destroy, id: @registration
    end

    assert_redirected_to registrations_path
  end
end
