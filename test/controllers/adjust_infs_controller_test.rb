require "test_helper"

class AdjustInfsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adjust_inf = adjust_infs(:one)
  end

  test "should get index" do
    get adjust_infs_url, as: :json
    assert_response :success
  end

  test "should create adjust_inf" do
    assert_difference('AdjustInf.count') do
      post adjust_infs_url, params: { adjust_inf: { day: @adjust_inf.day, price: @adjust_inf.price } }, as: :json
    end

    assert_response 201
  end

  test "should show adjust_inf" do
    get adjust_inf_url(@adjust_inf), as: :json
    assert_response :success
  end

  test "should update adjust_inf" do
    patch adjust_inf_url(@adjust_inf), params: { adjust_inf: { day: @adjust_inf.day, price: @adjust_inf.price } }, as: :json
    assert_response 200
  end

  test "should destroy adjust_inf" do
    assert_difference('AdjustInf.count', -1) do
      delete adjust_inf_url(@adjust_inf), as: :json
    end

    assert_response 204
  end
end
