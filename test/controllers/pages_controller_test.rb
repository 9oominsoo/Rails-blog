require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get pages_about_url
    assert_response :success
  end

  test "should get blog" do
    get pages_blog_url
    assert_response :success
  end

  test "should get contact" do
    get pages_contact_url
    assert_response :success
  end

  test "should get services" do
    get pages_services_url
    assert_response :success
  end

  test "should get shop" do
    get pages_shop_url
    assert_response :success
  end

  test "should get work" do
    get pages_work_url
    assert_response :success
  end

  test "should get work-grid" do
    get pages_work-grid_url
    assert_response :success
  end

  test "should get work-grid-without-text" do
    get pages_work-grid-without-text_url
    assert_response :success
  end

end
