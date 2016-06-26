require 'test_helper'

class StudentsBiographiesControllerTest < ActionController::TestCase
  setup do
    @students_biography = students_biographies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:students_biographies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create students_biography" do
    assert_difference('StudentsBiography.count') do
      post :create, students_biography: { agama: @students_biography.agama, alamat_rumah_kabupaten: @students_biography.alamat_rumah_kabupaten, alamat_rumah_kodepos: @students_biography.alamat_rumah_kodepos, alamat_rumah_kota: @students_biography.alamat_rumah_kota, alamat_rumah_rt: @students_biography.alamat_rumah_rt, alamat_rumah_rw: @students_biography.alamat_rumah_rw, ayah_alamat_kabupaten: @students_biography.ayah_alamat_kabupaten, ayah_alamat_kodepos: @students_biography.ayah_alamat_kodepos, ayah_alamat_kota: @students_biography.ayah_alamat_kota, ayah_alamat_rt: @students_biography.ayah_alamat_rt, ayah_alamat_rw: @students_biography.ayah_alamat_rw, ayah_nama: @students_biography.ayah_nama, ayah_no_kontak: @students_biography.ayah_no_kontak, ayah_pekerjaan: @students_biography.ayah_pekerjaan, ayah_pendidikan_terakhir: @students_biography.ayah_pendidikan_terakhir, ayah_tanggal_lahir: @students_biography.ayah_tanggal_lahir, ayah_tempat_lahir: @students_biography.ayah_tempat_lahir, fakultas: @students_biography.fakultas, ibu_alamat_kabupaten: @students_biography.ibu_alamat_kabupaten, ibu_alamat_kodepos: @students_biography.ibu_alamat_kodepos, ibu_alamat_kota: @students_biography.ibu_alamat_kota, ibu_alamat_rt: @students_biography.ibu_alamat_rt, ibu_alamat_rw: @students_biography.ibu_alamat_rw, ibu_nama: @students_biography.ibu_nama, ibu_no_kontak: @students_biography.ibu_no_kontak, ibu_pekerjaan: @students_biography.ibu_pekerjaan, ibu_pendidikan_terakhir: @students_biography.ibu_pendidikan_terakhir, ibu_tanggal_lahir: @students_biography.ibu_tanggal_lahir, ibu_tempat_lahir: @students_biography.ibu_tempat_lahir, jenis_kelamin: @students_biography.jenis_kelamin, jurusan: @students_biography.jurusan, name: @students_biography.name, perguruan_tinggi_asal: @students_biography.perguruan_tinggi_asal, perguruan_tinggi_asal_tahun_terakhir: @students_biography.perguruan_tinggi_asal_tahun_terakhir, sekolah_sd: @students_biography.sekolah_sd, sekolah_sd_tahun_lulus: @students_biography.sekolah_sd_tahun_lulus, sekolah_smp_tahun_lulus: @students_biography.sekolah_smp_tahun_lulus, sekolah_smu_tahun_lulus: @students_biography.sekolah_smu_tahun_lulus, siswa_email: @students_biography.siswa_email, siswa_no_kontak: @students_biography.siswa_no_kontak, stambuk: @students_biography.stambuk, tanggal_lahir: @students_biography.tanggal_lahir, tempat_lahir: @students_biography.tempat_lahir, wali_alamat_kabupaten: @students_biography.wali_alamat_kabupaten, wali_alamat_kodepos: @students_biography.wali_alamat_kodepos, wali_alamat_kota: @students_biography.wali_alamat_kota, wali_alamat_rt: @students_biography.wali_alamat_rt, wali_alamat_rw: @students_biography.wali_alamat_rw, wali_nama: @students_biography.wali_nama, wali_no_kontak: @students_biography.wali_no_kontak, wali_pekerjaan: @students_biography.wali_pekerjaan, wali_pendidikan_terakhir: @students_biography.wali_pendidikan_terakhir, wali_tanggal_lahir: @students_biography.wali_tanggal_lahir, wali_tempat_lahir: @students_biography.wali_tempat_lahir }
    end

    assert_redirected_to students_biography_path(assigns(:students_biography))
  end

  test "should show students_biography" do
    get :show, id: @students_biography
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @students_biography
    assert_response :success
  end

  test "should update students_biography" do
    patch :update, id: @students_biography, students_biography: { agama: @students_biography.agama, alamat_rumah_kabupaten: @students_biography.alamat_rumah_kabupaten, alamat_rumah_kodepos: @students_biography.alamat_rumah_kodepos, alamat_rumah_kota: @students_biography.alamat_rumah_kota, alamat_rumah_rt: @students_biography.alamat_rumah_rt, alamat_rumah_rw: @students_biography.alamat_rumah_rw, ayah_alamat_kabupaten: @students_biography.ayah_alamat_kabupaten, ayah_alamat_kodepos: @students_biography.ayah_alamat_kodepos, ayah_alamat_kota: @students_biography.ayah_alamat_kota, ayah_alamat_rt: @students_biography.ayah_alamat_rt, ayah_alamat_rw: @students_biography.ayah_alamat_rw, ayah_nama: @students_biography.ayah_nama, ayah_no_kontak: @students_biography.ayah_no_kontak, ayah_pekerjaan: @students_biography.ayah_pekerjaan, ayah_pendidikan_terakhir: @students_biography.ayah_pendidikan_terakhir, ayah_tanggal_lahir: @students_biography.ayah_tanggal_lahir, ayah_tempat_lahir: @students_biography.ayah_tempat_lahir, fakultas: @students_biography.fakultas, ibu_alamat_kabupaten: @students_biography.ibu_alamat_kabupaten, ibu_alamat_kodepos: @students_biography.ibu_alamat_kodepos, ibu_alamat_kota: @students_biography.ibu_alamat_kota, ibu_alamat_rt: @students_biography.ibu_alamat_rt, ibu_alamat_rw: @students_biography.ibu_alamat_rw, ibu_nama: @students_biography.ibu_nama, ibu_no_kontak: @students_biography.ibu_no_kontak, ibu_pekerjaan: @students_biography.ibu_pekerjaan, ibu_pendidikan_terakhir: @students_biography.ibu_pendidikan_terakhir, ibu_tanggal_lahir: @students_biography.ibu_tanggal_lahir, ibu_tempat_lahir: @students_biography.ibu_tempat_lahir, jenis_kelamin: @students_biography.jenis_kelamin, jurusan: @students_biography.jurusan, name: @students_biography.name, perguruan_tinggi_asal: @students_biography.perguruan_tinggi_asal, perguruan_tinggi_asal_tahun_terakhir: @students_biography.perguruan_tinggi_asal_tahun_terakhir, sekolah_sd: @students_biography.sekolah_sd, sekolah_sd_tahun_lulus: @students_biography.sekolah_sd_tahun_lulus, sekolah_smp_tahun_lulus: @students_biography.sekolah_smp_tahun_lulus, sekolah_smu_tahun_lulus: @students_biography.sekolah_smu_tahun_lulus, siswa_email: @students_biography.siswa_email, siswa_no_kontak: @students_biography.siswa_no_kontak, stambuk: @students_biography.stambuk, tanggal_lahir: @students_biography.tanggal_lahir, tempat_lahir: @students_biography.tempat_lahir, wali_alamat_kabupaten: @students_biography.wali_alamat_kabupaten, wali_alamat_kodepos: @students_biography.wali_alamat_kodepos, wali_alamat_kota: @students_biography.wali_alamat_kota, wali_alamat_rt: @students_biography.wali_alamat_rt, wali_alamat_rw: @students_biography.wali_alamat_rw, wali_nama: @students_biography.wali_nama, wali_no_kontak: @students_biography.wali_no_kontak, wali_pekerjaan: @students_biography.wali_pekerjaan, wali_pendidikan_terakhir: @students_biography.wali_pendidikan_terakhir, wali_tanggal_lahir: @students_biography.wali_tanggal_lahir, wali_tempat_lahir: @students_biography.wali_tempat_lahir }
    assert_redirected_to students_biography_path(assigns(:students_biography))
  end

  test "should destroy students_biography" do
    assert_difference('StudentsBiography.count', -1) do
      delete :destroy, id: @students_biography
    end

    assert_redirected_to students_biographies_path
  end
end
