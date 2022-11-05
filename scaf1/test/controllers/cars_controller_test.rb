require "test_helper"

class CarsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cars_index_url
    assert_response :success
  end

  test "should get show" do
    get cars_show_url
    assert_response :success
  end

  test "should get edit" do
    get cars_edit_url
    assert_response :success
  end

  test "should get _form" do
    get cars__form_url
    assert_response :success
  end

  test "should get _car" do
    get cars__car_url
    assert_response :success
  end

  test "should get create.js" do
    get cars_create.js_url
    assert_response :success
  end

  test "should get destroy.js" do
    get cars_destroy.js_url
    assert_response :success
  end
end
