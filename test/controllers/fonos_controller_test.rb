require "test_helper"

class FonosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fono = fonos(:one)
  end

  test "should get index" do
    get fonos_url
    assert_response :success
  end

  test "should get new" do
    get new_fono_url
    assert_response :success
  end

  test "should create fono" do
    assert_difference("Fono.count") do
      post fonos_url, params: { fono: { numero: @fono.numero, user_id: @fono.user_id } }
    end

    assert_redirected_to fono_url(Fono.last)
  end

  test "should show fono" do
    get fono_url(@fono)
    assert_response :success
  end

  test "should get edit" do
    get edit_fono_url(@fono)
    assert_response :success
  end

  test "should update fono" do
    patch fono_url(@fono), params: { fono: { numero: @fono.numero, user_id: @fono.user_id } }
    assert_redirected_to fono_url(@fono)
  end

  test "should destroy fono" do
    assert_difference("Fono.count", -1) do
      delete fono_url(@fono)
    end

    assert_redirected_to fonos_url
  end
end
