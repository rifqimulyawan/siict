require 'test_helper'

class MerksControllerTest < ActionController::TestCase
  setup do
    @merk = merks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:merks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create merk" do
    assert_difference('Merk.count') do
      post :create, merk: { kategori_id: @merk.kategori_id, nama: @merk.nama }
    end

    assert_redirected_to merk_path(assigns(:merk))
  end

  test "should show merk" do
    get :show, id: @merk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @merk
    assert_response :success
  end

  test "should update merk" do
    patch :update, id: @merk, merk: { kategori_id: @merk.kategori_id, nama: @merk.nama }
    assert_redirected_to merk_path(assigns(:merk))
  end

  test "should destroy merk" do
    assert_difference('Merk.count', -1) do
      delete :destroy, id: @merk
    end

    assert_redirected_to merks_path
  end
end
