require 'test_helper'

class BukuInduksControllerTest < ActionController::TestCase
  setup do
    @buku_induk = buku_induks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:buku_induks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create buku_induk" do
    assert_difference('BukuInduk.count') do
      post :create, buku_induk: { agama: @buku_induk.agama, alamat: @buku_induk.alamat, bangsa: @buku_induk.bangsa, foto: @buku_induk.foto, ijazah_terakhir: @buku_induk.ijazah_terakhir, jenis_kelamin: @buku_induk.jenis_kelamin, nama: @buku_induk.nama, nama_ayah: @buku_induk.nama_ayah, nama_ibu: @buku_induk.nama_ibu, nama_wali: @buku_induk.nama_wali, no_stambuk: @buku_induk.no_stambuk, pekerjaan_orangtua_wali: @buku_induk.pekerjaan_orangtua_wali, semester_akademik: @buku_induk.semester_akademik, status_akademik: @buku_induk.status_akademik, tanggal_akademik: @buku_induk.tanggal_akademik, tanggal_lahir: @buku_induk.tanggal_lahir, tempat_lahir: @buku_induk.tempat_lahir }
    end

    assert_redirected_to buku_induk_path(assigns(:buku_induk))
  end

  test "should show buku_induk" do
    get :show, id: @buku_induk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @buku_induk
    assert_response :success
  end

  test "should update buku_induk" do
    patch :update, id: @buku_induk, buku_induk: { agama: @buku_induk.agama, alamat: @buku_induk.alamat, bangsa: @buku_induk.bangsa, foto: @buku_induk.foto, ijazah_terakhir: @buku_induk.ijazah_terakhir, jenis_kelamin: @buku_induk.jenis_kelamin, nama: @buku_induk.nama, nama_ayah: @buku_induk.nama_ayah, nama_ibu: @buku_induk.nama_ibu, nama_wali: @buku_induk.nama_wali, no_stambuk: @buku_induk.no_stambuk, pekerjaan_orangtua_wali: @buku_induk.pekerjaan_orangtua_wali, semester_akademik: @buku_induk.semester_akademik, status_akademik: @buku_induk.status_akademik, tanggal_akademik: @buku_induk.tanggal_akademik, tanggal_lahir: @buku_induk.tanggal_lahir, tempat_lahir: @buku_induk.tempat_lahir }
    assert_redirected_to buku_induk_path(assigns(:buku_induk))
  end

  test "should destroy buku_induk" do
    assert_difference('BukuInduk.count', -1) do
      delete :destroy, id: @buku_induk
    end

    assert_redirected_to buku_induks_path
  end
end
