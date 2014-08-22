require 'test_helper'

class HolaMundosControllerTest < ActionController::TestCase
  setup do
    @hola_mundo = hola_mundos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hola_mundos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hola_mundo" do
    assert_difference('HolaMundo.count') do
      post :create, hola_mundo: { endad: @hola_mundo.endad, nombre: @hola_mundo.nombre }
    end

    assert_redirected_to hola_mundo_path(assigns(:hola_mundo))
  end

  test "should show hola_mundo" do
    get :show, id: @hola_mundo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hola_mundo
    assert_response :success
  end

  test "should update hola_mundo" do
    patch :update, id: @hola_mundo, hola_mundo: { endad: @hola_mundo.endad, nombre: @hola_mundo.nombre }
    assert_redirected_to hola_mundo_path(assigns(:hola_mundo))
  end

  test "should destroy hola_mundo" do
    assert_difference('HolaMundo.count', -1) do
      delete :destroy, id: @hola_mundo
    end

    assert_redirected_to hola_mundos_path
  end
end
