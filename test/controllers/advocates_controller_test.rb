require "test_helper"

class AdvocatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @advocate = advocates(:one)
  end

  test "should get index" do
    get advocates_url
    assert_response :success
  end

  test "should get new" do
    get new_advocate_url
    assert_response :success
  end

  test "should create advocate" do
    assert_difference("Advocate.count") do
      post advocates_url, params: { advocate: { email: @advocate.email, first_name: @advocate.first_name, last_hame: @advocate.last_hame, zipcode: @advocate.zipcode } }
    end

    assert_redirected_to advocate_url(Advocate.last)
  end

  test "should show advocate" do
    get advocate_url(@advocate)
    assert_response :success
  end

  test "should get edit" do
    get edit_advocate_url(@advocate)
    assert_response :success
  end

  test "should update advocate" do
    patch advocate_url(@advocate), params: { advocate: { email: @advocate.email, first_name: @advocate.first_name, last_hame: @advocate.last_hame, zipcode: @advocate.zipcode } }
    assert_redirected_to advocate_url(@advocate)
  end

  test "should destroy advocate" do
    assert_difference("Advocate.count", -1) do
      delete advocate_url(@advocate)
    end

    assert_redirected_to advocates_url
  end
end
