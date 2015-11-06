require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get feed" do
    get :feed
    assert_response :success
  end

<<<<<<< HEAD
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get profile" do
    get :profile
=======
  test "should get profile" do
    get :profile
    assert_response :success
  end

  test "should get home" do
    get :home
>>>>>>> 5e72d4cf8f03d7bd0d6dcaa4ef76f3799bce48bf
    assert_response :success
  end

end
