require 'test_helper'

class UersControllerTest < ActionController::TestCase
  setup do
    @uer = uers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uer" do
    assert_difference('Uer.count') do
      post :create, uer: { password_hash: @uer.password_hash, username: @uer.username }
    end

    assert_redirected_to uer_path(assigns(:uer))
  end

  test "should show uer" do
    get :show, id: @uer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uer
    assert_response :success
  end

  test "should update uer" do
    put :update, id: @uer, uer: { password_hash: @uer.password_hash, username: @uer.username }
    assert_redirected_to uer_path(assigns(:uer))
  end

  test "should destroy uer" do
    assert_difference('Uer.count', -1) do
      delete :destroy, id: @uer
    end

    assert_redirected_to uers_path
  end
end
