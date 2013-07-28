require 'test_helper'

class FitnessclassesControllerTest < ActionController::TestCase
  setup do
    @fitnessclass = fitnessclasses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fitnessclasses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fitnessclass" do
    assert_difference('Fitnessclass.count') do
      post :create, fitnessclass: {  }
    end

    assert_redirected_to fitnessclass_path(assigns(:fitnessclass))
  end

  test "should show fitnessclass" do
    get :show, id: @fitnessclass
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fitnessclass
    assert_response :success
  end

  test "should update fitnessclass" do
    put :update, id: @fitnessclass, fitnessclass: {  }
    assert_redirected_to fitnessclass_path(assigns(:fitnessclass))
  end

  test "should destroy fitnessclass" do
    assert_difference('Fitnessclass.count', -1) do
      delete :destroy, id: @fitnessclass
    end

    assert_redirected_to fitnessclasses_path
  end
end
