require 'test_helper'

class BookControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get book_index_url
    assert_response :success
  end

  test "should get new" do
    get book_new_url
    assert_response :success
  end

  test "should get create" do
    get book_create_url
    assert_response :success
  end

  test "should get listing" do
    get book_listing_url
    assert_response :success
  end

  test "should get pricing" do
    get book_pricing_url
    assert_response :success
  end

  test "should get description" do
    get book_description_url
    assert_response :success
  end

  test "should get photo_upload" do
    get book_photo_upload_url
    assert_response :success
  end

  test "should get amenities" do
    get book_amenities_url
    assert_response :success
  end

  test "should get location" do
    get book_location_url
    assert_response :success
  end

  test "should get update" do
    get book_update_url
    assert_response :success
  end

end
