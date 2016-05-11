require 'test_helper'

class SathishesControllerTest < ActionController::TestCase
  setup do
    @sathish = sathishes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sathishes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sathish" do
    assert_difference('Sathish.count') do
      post :create, sathish: { address: @sathish.address, marks: @sathish.marks, name: @sathish.name, semester: @sathish.semester }
    end

    assert_redirected_to sathish_path(assigns(:sathish))
  end

  test "should show sathish" do
    get :show, id: @sathish
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sathish
    assert_response :success
  end

  test "should update sathish" do
    patch :update, id: @sathish, sathish: { address: @sathish.address, marks: @sathish.marks, name: @sathish.name, semester: @sathish.semester }
    assert_redirected_to sathish_path(assigns(:sathish))
  end

  test "should destroy sathish" do
    assert_difference('Sathish.count', -1) do
      delete :destroy, id: @sathish
    end

    assert_redirected_to sathishes_path
  end
end
