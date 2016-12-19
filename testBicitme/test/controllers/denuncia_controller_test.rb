require 'test_helper'

class DenunciaControllerTest < ActionController::TestCase
  setup do
    @denuncium = denuncia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:denuncia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create denuncium" do
    assert_difference('Denuncium.count') do
      post :create, denuncium: { ciclista_id: @denuncium.ciclista_id, den_denunciante: @denuncium.den_denunciante, den_descripcion: @denuncium.den_descripcion, den_estado: @denuncium.den_estado, den_fecha: @denuncium.den_fecha, reparacion_id: @denuncium.reparacion_id, taller_id: @denuncium.taller_id }
    end

    assert_redirected_to denuncium_path(assigns(:denuncium))
  end

  test "should show denuncium" do
    get :show, id: @denuncium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @denuncium
    assert_response :success
  end

  test "should update denuncium" do
    patch :update, id: @denuncium, denuncium: { ciclista_id: @denuncium.ciclista_id, den_denunciante: @denuncium.den_denunciante, den_descripcion: @denuncium.den_descripcion, den_estado: @denuncium.den_estado, den_fecha: @denuncium.den_fecha, reparacion_id: @denuncium.reparacion_id, taller_id: @denuncium.taller_id }
    assert_redirected_to denuncium_path(assigns(:denuncium))
  end

  test "should destroy denuncium" do
    assert_difference('Denuncium.count', -1) do
      delete :destroy, id: @denuncium
    end

    assert_redirected_to denuncia_path
  end
end
