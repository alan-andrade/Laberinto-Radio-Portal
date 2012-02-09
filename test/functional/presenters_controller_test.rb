require 'test_helper'

class PresentersControllerTest < ActionController::TestCase
  setup do
    @presenter = presenters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:presenters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create presenter" do
    assert_difference('Presenter.count') do
      post :create, presenter: @presenter.attributes
    end

    assert_redirected_to presenter_path(assigns(:presenter))
  end

  test "should show presenter" do
    get :show, id: @presenter.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @presenter.to_param
    assert_response :success
  end

  test "should update presenter" do
    put :update, id: @presenter.to_param, presenter: @presenter.attributes
    assert_redirected_to presenter_path(assigns(:presenter))
  end

  test "should destroy presenter" do
    assert_difference('Presenter.count', -1) do
      delete :destroy, id: @presenter.to_param
    end

    assert_redirected_to presenters_path
  end
end
