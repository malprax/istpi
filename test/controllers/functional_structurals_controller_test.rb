require 'test_helper'

class FunctionalStructuralsControllerTest < ActionController::TestCase
  setup do
    @functional_structural = functional_structurals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:functional_structurals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create functional_structural" do
    assert_difference('FunctionalStructural.count') do
      post :create, functional_structural: { jabatan: @functional_structural.jabatan, name: @functional_structural.name, nidn: @functional_structural.nidn, nip: @functional_structural.nip }
    end

    assert_redirected_to functional_structural_path(assigns(:functional_structural))
  end

  test "should show functional_structural" do
    get :show, id: @functional_structural
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @functional_structural
    assert_response :success
  end

  test "should update functional_structural" do
    patch :update, id: @functional_structural, functional_structural: { jabatan: @functional_structural.jabatan, name: @functional_structural.name, nidn: @functional_structural.nidn, nip: @functional_structural.nip }
    assert_redirected_to functional_structural_path(assigns(:functional_structural))
  end

  test "should destroy functional_structural" do
    assert_difference('FunctionalStructural.count', -1) do
      delete :destroy, id: @functional_structural
    end

    assert_redirected_to functional_structurals_path
  end
end
