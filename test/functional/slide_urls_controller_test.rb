require 'test_helper'

class SlideUrlsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:slide_urls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create slide_url" do
    assert_difference('SlideUrl.count') do
      post :create, :slide_url => { }
    end

    assert_redirected_to slide_url_path(assigns(:slide_url))
  end

  test "should show slide_url" do
    get :show, :id => slide_urls(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => slide_urls(:one).id
    assert_response :success
  end

  test "should update slide_url" do
    put :update, :id => slide_urls(:one).id, :slide_url => { }
    assert_redirected_to slide_url_path(assigns(:slide_url))
  end

  test "should destroy slide_url" do
    assert_difference('SlideUrl.count', -1) do
      delete :destroy, :id => slide_urls(:one).id
    end

    assert_redirected_to slide_urls_path
  end
end
