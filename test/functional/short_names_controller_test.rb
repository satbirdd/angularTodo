require 'test_helper'

class ShortNamesControllerTest < ActionController::TestCase
  setup do
    @short_name = short_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:short_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create short_name" do
    assert_difference('ShortName.count') do
      post :create, short_name: {  }
    end

    assert_redirected_to short_name_path(assigns(:short_name))
  end

  test "should show short_name" do
    get :show, id: @short_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @short_name
    assert_response :success
  end

  test "should update short_name" do
    put :update, id: @short_name, short_name: {  }
    assert_redirected_to short_name_path(assigns(:short_name))
  end

  test "should destroy short_name" do
    assert_difference('ShortName.count', -1) do
      delete :destroy, id: @short_name
    end

    assert_redirected_to short_names_path
  end
end
