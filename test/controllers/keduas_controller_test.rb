require 'test_helper'

class KeduasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kedua = keduas(:one)
  end

  test "should get index" do
    get keduas_url
    assert_response :success
  end

  test "should get new" do
    get new_kedua_url
    assert_response :success
  end

  test "should create kedua" do
    assert_difference('Kedua.count') do
      post keduas_url, params: { kedua: { alamat: @kedua.alamat, nama: @kedua.nama, no_hp: @kedua.no_hp } }
    end

    assert_redirected_to kedua_url(Kedua.last)
  end

  test "should show kedua" do
    get kedua_url(@kedua)
    assert_response :success
  end

  test "should get edit" do
    get edit_kedua_url(@kedua)
    assert_response :success
  end

  test "should update kedua" do
    patch kedua_url(@kedua), params: { kedua: { alamat: @kedua.alamat, nama: @kedua.nama, no_hp: @kedua.no_hp } }
    assert_redirected_to kedua_url(@kedua)
  end

  test "should destroy kedua" do
    assert_difference('Kedua.count', -1) do
      delete kedua_url(@kedua)
    end

    assert_redirected_to keduas_url
  end
end
