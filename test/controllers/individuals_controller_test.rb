require 'test_helper'

class IndividualsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get individuals_index_url
    assert_response :success
  end

  test "should get show" do
    get individuals_show_url
    assert_response :success
  end

  test "should get new" do
    get individuals_new_url
    assert_response :success
  end

end
